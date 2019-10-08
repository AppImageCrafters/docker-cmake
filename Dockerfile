FROM appimagecrafters/docker-base
RUN yum install -y xz

ADD install-cmake.sh /
ARG CMAKE_VERSION=3.15.4
RUN /install-cmake.sh