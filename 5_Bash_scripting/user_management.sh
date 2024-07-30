
#!/bin/bash

# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" 
  exit 1
fi

# Function to add a new user
add_user() {
  read -p "Enter the username: " username
  read -p "Enter the group: " group

  # Create the user
  useradd -m -G "$group" "$username"
  if [ $? -eq 0 ]; then
    echo "User $username has been added to group $group."
  else
    echo "Failed to add user $username."
    exit 1
  fi

  # Set password for the user
  passwd "$username"
}

# Execute the function
add_user

