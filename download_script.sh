#!/bin/bash

# File name
FILE_NAME="llamafile-server-0.1-llava-v1.5-7b-q4"

# Check if the file already exists
if [ ! -f "/data/$FILE_NAME" ]; then
	    # Download the file
	        wget -O "/data/$FILE_NAME" https://huggingface.co/jartine/llava-v1.5-7B-GGUF/resolve/main/llamafile-server-0.1-llava-v1.5-7b-q4
fi

# Make the binary executable
chmod 755 "/data/$FILE_NAME"

# Execute the binary
/data/$FILE_NAME --host 0.0.0.0

