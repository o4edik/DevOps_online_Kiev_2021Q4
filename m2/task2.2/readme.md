### Task 2.2
#### AWS create EC2, Lightsail, configure WordPress instance, S3, ECS
1. Create and launch a Linux Virtual Machine with Amazon Lightsail.
![1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/task2.2/1.png)


2. Connect with Linux Virtual Machine
![2](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/1_2.png)

3. Create EC2 instance with CentOS onboard
![3](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/3.png)
![3.1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/3_1.png)

4. Createsnapshot for EC2 instance with CentOS
![4](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/4.png)

5. Create additional volume Disk_D
![5](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/5.png)

6. Attach Disk_D instance with CentOS
![6](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/6.png)
![6.1](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/6_1.png)

7. Create image from snapshot
![7](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/7.png)

8. Launch the third instance from backup created from snapshot
![8](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/8.png)

9. Detach Disk_D from the 2nd instance and attach disk_D to the new instance
![9](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/9.png)

10.Launch and configure a WordPress instance with Amazon Lightsail
![10](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/10.png) 

11. S3, store and retrieve file
![11](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/11.png)
![11](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/11_1.png)
![11](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/11_2.png)

12. AWS S3 CLI, configure, create user, upload files

*configure S3
```
ed@deik:~$ aws configure
AWS Access Key ID [None]: AK**UF
AWS Secret Access Key [None]: Lm******R3
Default region name [None]: us-east-2
Default output format [None]: json
```
*create S3 bucket
```
ed@deik:~$ aws s3 mb s3://cli-bucket-ed
make_bucket: cli-bucket-ed
```

*upload file to S3
```
ed@deik:~$ aws s3 cp ~/Pictures/white.jpeg s3://cli-bucket-ed
upload: Pictures/white.jpeg to s3://cli-bucket-ed/white.jpeg 
```
13. Creating your own domain and domain name for your site with Route 53
14. AWS ECS, Docker
*install Docker engine
```
sudo yum update -y
sudo amazon-linux-extras install docker
```

*create docker image from dockerfile

touch Dockerfile

```
FROM ubuntu:18.04

# Install dependencies
RUN apt-get update && \
 apt-get -y install apache2

# Install apache and write hello world message
RUN echo 'Hello World!' > /var/www/html/index.html

# Configure apache
RUN echo '. /etc/apache2/envvars' > /root/run_apache.sh && \
 echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh && \
 echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh && \ 
 echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh && \ 
 chmod 755 /root/run_apache.sh
EXPOSE 80
CMD /root/run_apache.sh
```

docker build -<Dockerfile


*rundocker container from Dockerfile

```
[ec2-user@ip-172-31-46-87 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
[ec2-user@ip-172-31-46-87 ~]$ docker ps -a
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS                      PORTS     NAMES
da655086e95c   hello-world   "/hello"                 43 seconds ago   Exited (0) 42 seconds ago             compassionate_shamir
0449274b42c6   ec2-ubuntu    "/bin/sh -c /root/ru…"   9 hours ago      Exited (137) 9 hours ago              inspiring_murdock
```

*Push docker image to AWS ECR

```
[ec2-user@ip-172-31-46-87 ~]$ docker push 064925954027.dkr.ecr.us-east-2.amazonaws.com/ubuntu
Using default tag: latest
The push refers to repository [064925954027.dkr.ecr.us-east-2.amazonaws.com/ubuntu]
c2faf51a5482: Pushed 
1fa3b729d497: Pushed 
768ef311652c: Pushed 
824bf068fd3d: Pushed 
latest: digest: sha256:6c111899f04053c86efd9dee24041e86cd9819bfd66629178354591cddbd4d8f size: 1155
```

15. Create a static website on Amazon S3, publicly available
![15](https://github.com/o4edik/DevOps_online_Kiev_2021Q4/blob/master/m2/15.png)
