#!/bin/bash

# Custom ls command
echo "Listing files in $(pwd):"
for file in *; do
    echo "$file"
done

-------------------------------
#!/bin/bash

# Colors
DIR="\e[34m"   # Blue for directories
EXE="\e[32m"   # Green for executables
REG="\e[0m"    # Reset color

echo "Custom ls output from: $(pwd)"
for file in *; do
    if [ -d "$file" ]; then
        echo -e "${DIR}$file${REG}"
    elif [ -x "$file" ]; then
        echo -e "${EXE}$file${REG}"
    else
        echo "$file"
    fi
done
