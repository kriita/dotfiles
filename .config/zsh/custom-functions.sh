#!/bin/bash
function dos2unix() { sed -i.bak 's/\r$//' "$1"; }
function fvim() { $EDITOR "$(fzf)"; }

# Function to convert Windows paths to POSIX paths
win2nix() {
    # 1. Check if an argument was provided
    if [ -z "$1" ]; then
        echo "Usage: win2nix 'C:\Path\To\File'"
        return 1
    fi

    local input_path="$1"
    local final_path=""

    # 2. Perform the initial conversion (Windows -> POSIX)
    if command -v wslpath &> /dev/null; then
        final_path=$(wslpath -u "$input_path")

    elif command -v cygpath &> /dev/null; then
        final_path=$(cygpath -u "$input_path")

    else
        # Fallback manual conversion
        final_path=$(echo "$input_path" | sed -E 's/^([A-Za-z]):/\/\L\1/; s/\\/\//g')
    fi

    # 3. Custom Rewrite for Vault101
    # If the path starts with "/vault101/", replace it with the SMB URL.
    if [[ "$final_path" == "/vault101/"* ]]; then
        # Syntax: ${variable/search/replace}
        final_path="${final_path/\/vault101\//smb://vault101.lkpg.pitch.se/}"
    fi

    # 4. Output the result
    echo "$final_path"
}
