1_User Management Script

## Description

This Bash script automates the process of adding new users to a Linux system. It performs the following tasks:
- Checks if the script is run with root privileges.
- Prompts the user for a new username and group.
- Creates the new user and adds them to the specified group.
- Sets a password for the new user.

This script is useful for Linux administrators who need to manage user accounts 
efficiently.

## Features

- **Root Privilege Check:** Ensures that the script is executed as root, which is
  necessary for user management.
- **User Creation:** Creates a new user and adds them to a specified group.
- **Password Setting:** Allows setting a password for the newly created user.

## Usage

1. **Make the Script Executable**

   Before running the script, ensure it has execute permissions:

   ```bash
   chmod +x user_management.sh

The script will prompt you to enter the username and group for the new user.
Afterward, it will ask you to set a password for the new user you see in 
the screenshot:
