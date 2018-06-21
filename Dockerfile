FROM scratch

ADD CentOS-7-x86_64.qcow2 /

RUN yum -y install httpd php

RUN echo "Website is hosted inside a container" > /var/www/html/index.html

EXPOSE 80

VOLUME /mnt/docker_vol  /data

RUN echo "httpd" >> /root/.bashrc

CMD ["/bin/bash"]
