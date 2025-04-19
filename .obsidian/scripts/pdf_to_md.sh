#!/bin/bash

# Set your folders
INPUT_FOLDER="../../handwritten-notes"
OUTPUT_FOLDER="../../written_markdown"

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

# Convert PDF to image (1st page only)
pdftoppm -png "$LATEST_FILE" /tmp/ocr_image

# OCR the image
pytesseract /tmp/ocr_image-1.png > "$TMP_TXT"

# Read the OCR result
OCR_CONTENT=$(cat "$TMP_TXT")

# Create a prompt for the model
PROMPT="You are a markdown assistant. Convert the following handwritten note into clean, organized Markdown. Fix common OCR mistakes like '||' -> '[ ]', '_--' -> '---'. Format lists, checkboxes, headings, and separators properly. Do not add or interpere anything to the file, only convert.\n\n$OCR_CONTENT"

# Run through Ollama + mistral
MARKDOWN_CONTENT=$(echo -e "$PROMPT" | ollama run mistral)

# Save output to a Markdown file
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUTPUT_FILE="$OUTPUT_FOLDER/note_$TIMESTAMP.md"

echo "$MARKDOWN_CONTENT" > "$OUTPUT_FILE"

echo "Done! Saved as $OUTPUT_FILE"

