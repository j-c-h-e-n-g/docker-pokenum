FROM ubuntu:14.04
MAINTAINER John Cheng "github@johncheng.com"

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
#  apt-get -y upgrade && \
  apt-get install -y build-essential software-properties-common byobu curl git htop man unzip vim wget libpoker-eval libpoker-eval-dev php5-dev php5-cli && \
  rm -rf /var/lib/apt/lists/*

RUN cd /tmp; git clone https://github.com/steevel/pokenum-php; 
RUN cd /tmp/pokenum-php; /usr/bin/phpize
RUN cd /tmp/pokenum-php; ./configure --enable-pokenum
RUN cd /tmp/pokenum-php; make
RUN cd /tmp/pokenum-php; make install 
RUN sed -i.bak 's/enable_dl = Off/enable_dl = On/g' /etc/php5/cli/php.ini
