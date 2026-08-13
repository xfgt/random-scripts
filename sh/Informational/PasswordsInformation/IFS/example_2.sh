line="root:x:0:0:root:/root:/bin/bash"

IFS=: read -r user pwd uid gid desc home shell <<< "$line"
echo "User $user uses shell $shell"
