### Module 6. Linux Networking
#### Taks 6.2 Networking with Linux(Configuring DHCP, DNS servers)
##### Part 2

1. Use already created internal-network for three VMs (VM1-VM3). VM1 has NAT and internal, VM2, VM3 – internal only interfaces.

2. Install and configure DHCP server on VM1.
(3 ways: using VBoxManage, DNSMASQ and ISC-DHSPSERVER).
 2.1 We'll use DNSMASQ as DHCP and DNS server in our task. Before we install DNSMASQ on ubuntu 20.04 we have to make some manipulations to release port 53

 ```
 sudo systemctl disable systemd-resolved
 sudo systemctl stop systemd-resolved
 ```

 2.2 Remove file resolv.conf

 ```
 $ sudo rm /etc/resolv.conf
 ```

 2.3 Create new resolv.conf file

 ```
 echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf
 ```
 2.4 Install DNSMASQ
 ```
 sudo apt install dnsmasq
 ```
 2.5 Configurate file /etc/dnsmasq.conf for dhcp
 
 ![3-1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/3-1%20conf-enp.png)

 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/3-2-dhcp-range.png)

 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/3-3-dhclient.png)

 
3. Check VM2 and VM3 for obtaining network addresses from DHCP server.

 3.1 VM2

 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/3-1.png)

 3.2 VM3

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/3-2-vm3.png)


4. Using existed network for three VMs (from p.1) install and configure DNS server on VM1. (You can use DNSMASQ, BIND9 or something else).

 4.1 We'll use DNSMASQ as a DNS server


5. Check VM2 and VM3 for gaining access to DNS server (naming services).

5.1 We'll use "dig" command for checking DNS addresses on VM2 and VM3 machines, below you can find screenshots of approval that DNS is working properly.

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/5-dig-vm2.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/5-dig-vm3.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m6/task6.2/5-4-dig-epam.png)

