FROM ubuntu:12.04
MAINTAINER John Cheng "github@johncheng.com"

RUN apt-get update 
RUN apt-get -y install curl build-essential libxml2-dev libxslt-dev git php5-dev php5-cli git
RUN apt-get -y install libpoker-eval libpoker-eval-dev 

RUN cd /tmp; git clone https://github.com/j-c-h-e-n-g/pokenum-php.git && cd /tmp/pokenum-php && /usr/bin/phpize && ./configure --enable-pokenum && make && make install

ADD php.ini /etc/php5/cli/php.ini
ADD test.php /tmp/test.php

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:changeme' |chpasswd

EXPOSE 22
CMD /usr/sbin/sshd -D

  
