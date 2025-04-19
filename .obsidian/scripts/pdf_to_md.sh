#!/bin/bash

# Input and output folders
INPUT_FOLDER="../../handwritten-notes"
OUTPUT_FOLDER="../../written_markdown"

# Temporary folder for intermediate images
TEMP_FOLDER="./temp_images"
mkdir -p "$TEMP_FOLDER"

# Find the latest file (even inside subfolders)
LATEST_FILE=$(find "$INPUT_FOLDER" -type f -printf "%T@ %p\n" | sort -n | tail -1 | cut -d' ' -f2-)

# Check if file found
if [ ! -f "$LATEST_FILE" ]; then
  echo "No files found in $INPUT_FOLDER."
  exit 1
fi

echo "Processing file: $LATEST_FILE"

# Convert PDF to images (if it's a pdf)
EXT="${LATEST_FILE##*.}"
if [[ "$EXT" == "pdf" ]]; then
  pdftoppm -png "$LATEST_FILE" "$TEMP_FOLDER/page"
else
  cp "$LATEST_FILE" "$TEMP_FOLDER/page-1.png"
fi

# Run OCR on all images using TrOCR
OCR_TEXT=""
for IMG in "$TEMP_FOLDER"/*.png; do
  echo "Running OCR (TrOCR) on $IMG"
  TEXT=$(python3 trocr.py "$IMG")
  OCR_TEXT+=$'\n'"$TEXT"
done


# Clean temporary images
rm -rf "$TEMP_FOLDER"

# Build the fancy prompt
PROMPT=$(cat <<EOF
You are a professional transcription assistant. Clean up the following OCR text from a handwritten note:
- Fix all misspelled words (even if it requires guessing based on context).
- Correct formatting into proper Markdown.
- Reconstruct broken sentences when needed.
- If you detect a checkbox like '[ ]', format it properly.
- Interpret headings, bullets, and paragraphs from the structure.

OCR text:
"""
$OCR_TEXT
"""
Output only the final Markdown without any comments.
EOF
)

# Send the prompt to Ollama
echo "Sending prompt to Ollama..."
MARKDOWN=$(echo "$PROMPT" | ollama run mistral)

# Generate output filename
FILENAME=$(basename "$LATEST_FILE")
BASENAME="${FILENAME%.*}"
OUTFILE="$OUTPUT_FOLDER/${BASENAME}.md"

# Save Markdown output
mkdir -p "$OUTPUT_FOLDER"
echo "$MARKDOWN" > "$OUTFILE"

echo "Saved Markdown to $OUTFILE"

