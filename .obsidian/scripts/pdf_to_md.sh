#!/bin/bash

# Set your folders
INPUT_FOLDER="/home/kasper/Documents/Noter/handwritten-notes"
OUTPUT_FOLDER="/home/kasper/Documents/Noter/written_markdown"

# Find the most recently modified PDF
LATEST_FILE=$(ls -t "$INPUT_FOLDER"/*.pdf | head -n 1)

# Check if a file was found
if [ -z "$LATEST_FILE" ]; then
    echo "No PDF files found in $INPUT_FOLDER"
    exit 1
fi

# Temp file locations
TMP_IMG="/tmp/ocr_image.png"
TMP_TXT="/tmp/ocr_text.txt"

# Convert PDF to multiple PNGs
pdftoppm -png "$LATEST_FILE" /tmp/ocr_image

# Prepare a fresh OCR text file
TMP_TXT="/tmp/ocr_text.txt"
> "$TMP_TXT"

# OCR all images
for IMG in /tmp/ocr_image-*.png; do
    echo "Processing $IMG..."
    tesseract "$IMG" "${IMG%.png}" --psm 6 -l eng
    cat "${IMG%.png}.txt" >> "$TMP_TXT"
    echo -e "\n\n" >> "$TMP_TXT"
done

# Read the full OCR text
OCR_CONTENT=$(cat "$TMP_TXT")

# Prompt the model
PROMPT="You are a professional transcription assistant. Clean up the following OCR text from a handwritten note:
- Fix all misspelled words (even if it requires guessing based on context).
- Correct formatting into proper Markdown.
- Reconstruct broken sentences when needed.
- If you detect a checkbox like '[ ]', format it properly.
- Interpret headings, bullets, and paragraphs from the structure.

OCR text:
"""
[YOUR OCR TEXT]
"""
Output only the final Markdown without any comments.
"

# Send to Ollama
MARKDOWN_CONTENT=$(echo -e "$PROMPT" | ollama run mistral)

# Save the output
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUTPUT_FILE="$OUTPUT_FOLDER/note_$TIMESTAMP.md"

echo "$MARKDOWN_CONTENT" > "$OUTPUT_FILE"

echo "Done! Saved as $OUTPUT_FILE"

