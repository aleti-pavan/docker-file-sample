# Dockerfile

This repo contains very basic dockerfile for you to create image and run container with.

Clone the repo
--------------

1. git clone https://github.com/aleti-pavan/docker-file-sample.git

Get into the dirctory
---------------------

2. cd docker-file-sample/

Build the image
---------------

Syntax: docker build -t 'your_dockerhub/container:tag' .

3. docker build -t aletipavan/nginx-docker-example:0.4 .

Sending build context to Docker daemon  52.74kB
Step 1/3 : FROM nginx:alpine
 ---> dd025cdfe837
Step 2/3 : ADD index.html /usr/share/nginx/html/index.html
 ---> 4ce006a54219
Step 3/3 : RUN echo "set_real_ip_from  10.42.0.0/16; real_ip_header X-Forwarded-For; real_ip_recursive on;" > /etc/nginx/conf.d/nginx-for-rancher.conf
 ---> Running in 2125cc26f1a4
Removing intermediate container 2125cc26f1a4
 ---> 70ae1c56675e
Successfully built 70ae1c56675e

Run Container of created image
------------------------------
I'm running with detach mode to push the run to the background. you can ignore --detach of the below command. Try with and without --detach to the command to know the difference.

4. docker run -p 80:80 --detach aletipavan/nginx-docker-example:0.4

07e1643af0832ee393b771709345c66fd774477240bce3ce50e4034d55cc8261

Look the response from container with curl
-------------------------------------------

5. curl http://localhost:80

