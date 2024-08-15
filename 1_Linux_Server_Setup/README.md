# Basic Linux Server Setup

This project will demonstrate our ability to set up and configure a Linux server from scratch, ensuring that it is properly configured and secure. Steps to Complete the Project:

## 1.	Initial Server Configuration

- Update the package index and upgrade installed packages: 

![Screenshot1](screenshots/1.png)

![Screenshot1](screenshots/Picture2.png)

- Create a New User and Add to the Sudo Group giving it administrative
    privileges.

![Screenshot1](screenshots/Picture3.png)

![Screenshot1](screenshots/Picture3.1.png)

## 2.	Configuring SSH Access 

   - Install and configure OpenSSH Server:

   ![Screenshot1](screenshots/Picture4.png)
     
   - Secure SSH by editing the configuration file (/etc/ssh/sshd_config):
        - Disable root login: PermitRootLogin no
        - Change the default SSH port: Port 2222

   ![Screenshot1](screenshots/Picture5.png)
    
   ![Screenshot1](screenshots/Picture6.png)
   
   - Restart SSH Service to Apply Changes

   ![Screenshot1](screenshots/Picture7.png)
        



   


   

     

   


