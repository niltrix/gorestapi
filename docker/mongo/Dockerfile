# build base image to run mongo replica set
FROM mongo:latest
COPY etc/mongod.conf /etc/mongod.conf
COPY etc/mongosetup.sh /etc/mongosetup.sh
CMD sh /etc/mongosetup.sh