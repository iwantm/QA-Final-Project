#!/bin/bash
docker run -it -p 8080:8080 -p 50000:50000 \
-v jenkins_home:/var/jenkins_home 
-v /var/run/docker.sock:/var/run/docker.sock \
--restart unless-stopped \
qateam1/springclinicjenkins


