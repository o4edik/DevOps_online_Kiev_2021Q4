## Module 3 Networking Fundamentals
### Tasks: 3.1; 3.2; 3.3; 3.4

#### TASK 3.1 Create three separate networks: Home Office, Enterprise, Data Center.

[.pkt file](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.1/task3.1.pkt)

1. Creating networks and set static addresses to PC's, Servers's, Routers's according provided guide and pic.

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.1/311.png)

#### TASK 3.2 Connecting separate networks using VLAN

[.pkt file](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.2/task3.2.pkt)

1. Create Networks and set IP address

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.2/321.png)

2. Creating VLAN1, VLAN2, VLAN3 by changing ports on switch Data Center. Change IP mask from /24 to /26 in Data Center devices

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.2/32-7-1.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.2/32-7-2.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.2/32-7-3.png)


#### TASK 3.3  Routing setting

[.pkt file](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/task3.3.pkt)

1. Setting up Route tables on routers ISP1, 2, 3 and Home according provided routing table in task guide


![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/ISP1%20routing.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/ISP2%20routing.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/ISP3%20routing.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/home%20routing.png)

2. Check tracert from Client 1 to Web Server 2

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/tracert-rip.png)

3. Setup RIP protocol in routers ISP1, 2 , 3

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/rip-isp1.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/rip-isp2.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/rip-isp3.png)

4. Check RIP with tracert 

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/tracert.png)

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.3/tracert-rip.png)


#### TASK 3.4 Setting up  DHCP, DNS

[.pkt file](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/task3.4.pkt)

1. Set up DHCP server at Enterprice network

![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dhcp-server.png)

 - PC's getting settings from DHCP server

 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dhcp-pc1.png)

 ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dhcp-pc2.png)

  - Setting DHCP at Home Router and PC3

  ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dhcp-homerouter.png)

  ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dhcp-pc3.png)

  2. Set and checking DNS work

  ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dns-ws1.png)

  ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/dns-ws2.png)

  ![](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m3/task3.4/ping-dom1.png)