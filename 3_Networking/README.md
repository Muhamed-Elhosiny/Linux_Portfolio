# Configure network settings and troubleshoot network issues on a Linux server.
Detailed Steps

## 1.	Initial Network Configuration

#### a. Check Current Network Settings:

This command displays all network interfaces and their current configuration.	

 ![pic1](screenshots/Picture1.png)


#### b. Set a Static IP Address

  - Identify our network interface (e.g., eth0, enp0s3, etc.)
  - Edit network configuration file (assuming Ubuntu with netplan)
  - sudo vim /etc/netplan/01-netcfg.yaml
  - Add Static IP Configuration:
    
    ![pic1](screenshots/Picture3.png)

### Problem
    
When I tried to Apply the Configuration:	sudo netplan apply, I met this problem
Permissions Issue: Netplan configuration files should have restricted permissions     for security reasons. We need to change the permissions of the file
/etc/netplan/01-netcfg.yaml.

After following these steps, our network settings should be correctly applied without warnings or errors.
    
1.	Permissions Fix: Changing the file permissions to 600 ensures that only the root       user can read and write the configuration file. This is a security measure to          prevent unauthorized access.
2.	Configuration Update: The gateway4 setting is replaced with the routes section,        which is the recommended way to specify default routes in recent versions of            Netplan.
3.	Starting systemd-networkd: This service is responsible for managing network            configurations. If it's not running, Netplan cannot apply the configurations.
4.	Applying Netplan: Running sudo netplan apply reconfigures the network interfaces       according to the updated settings.

![pic1](screenshots/Picture4.png)
   
    c. Verify Configuration:
    
![pic1](screenshots/Picture5.png)  
  
    2. Troubleshooting Network Issues
    
        a. Check Network Interface Status:	ifconfig eth0
        b. Test Connectivity
        
![pic1](screenshots/Picture6.png)
    
        c. Check Routing Table:
        
![pic1](screenshots/Picture7.png)
     
        d. Trace Route to an External Host:
        
![pic1](screenshots/Picture8.png)

In summary, the choice of configuration depends on the specific network requirements and environment.
The static configuration, which i did is more detailed and is used when precise control over network settings is needed.
The simpler configuration is more common for typical use cases where automatic IP configuration via DHCP is sufficient.
    





   

