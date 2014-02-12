FROM ubuntu:latest

# Install start scripts and hosts file
ADD install/bin/install-mongo /usr/bin/
ADD install/bin/start-mongo /usr/bin/
#ADD install/mongo/initial-data.json /data/
#ADD install/mongo/repsetInit.js /data/
RUN /usr/bin/install-mongo

# For MongoDB
# EXPOSE 28017

# For MongoDB_2
# EXPOSE 27017

# EXPOSE 27017:27017

