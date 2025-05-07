
#!/bin/bash
read -p "Enter a folder name with path : " folderName

if [[ -z "$folderName" ]]; then
 echo "Input is empty."
fi

if [ -d "$folderName" ]; then
    ls -la "$folderName"
else
    echo "Error Folder does not exist!!!"
fi
