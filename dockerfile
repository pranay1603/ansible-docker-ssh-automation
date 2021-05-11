FROM centos:latest

RUN yum install net-tools -y

RUN yum install openssh-server -y

RUN yum install passwd -y

RUN ssh-keygen -A

RUN echo docker |passwd root --stdin

CMD ["/usr/sbin/sshd" , "-D"] 


