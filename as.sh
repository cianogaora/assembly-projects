#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <assembly_file>"
    exit 1
fi

assembly_file="$1"
object_file="${assembly_file%.s}.o"
executable_file="${assembly_file%.s}"

# Step 1: Assemble ARM code
as -o $object_file $assembly_file

# Check if assembly was successful
if [ $? -eq 0 ]; then
    echo "Assembly successful"

    # Step 2: Link object file to create executable
    ld -o $executable_file $object_file

    # Check if linking was successful
    if [ $? -eq 0 ]; then
        echo "Linking successful"
        
    else
        echo "Linking failed"
    fi
else
    echo "Assembly failed"
fi
