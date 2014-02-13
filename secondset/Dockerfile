FROM ubuntu:latest

# Install start scripts and hosts file
ADD install/bin/install-mongo /usr/bin/
ADD install/bin/start-mongo /usr/bin/
RUN /usr/bin/install-mongo

