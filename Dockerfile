FROM phusion/baseimage
MAINTAINER andrew.rothstein@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:saltstack/salt
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y salt-master salt-minion salt-syndic salt-ssh

VOLUME ["/srv/salt"]

CMD ["salt-call", "--local", "state.highstate"]