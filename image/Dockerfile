#FROM ubuntu:14.04
#MAINTAINER Phusion <info@phusion.nl>

FROM debian:jessie
MAINTAINER Boris Capitanu <borice@hotmail.com>

ADD . /bd_build

RUN /bd_build/prepare.sh && \
	/bd_build/system_services.sh && \
	/bd_build/utilities.sh && \
	/bd_build/cleanup.sh

CMD ["/sbin/my_init"]
