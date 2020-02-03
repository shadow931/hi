#!

read -p 'Enter the username to create: ' USER_NAME
read -p 'Enter the account holder name : ' COMMENT
PASSWORD=$(date +%s%N | sha256sum | head -c32)

useradd -c "${COMMENT}" -m ${USER_NAME}
passwd -e ${USER_NAME}
echo "Username: ${USER_NAME}"
echo "Password: ${PASSWORD}"
echo "host:" localusers
