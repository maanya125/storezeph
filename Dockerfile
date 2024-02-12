# Use ubuntu:latest as the base image
FROM ubuntu:latest

# Copy tmate.sh to the root directory of the image
COPY tmate.sh /

# Run commands to update the package list, install unzip and wget, and make tmate.sh executable
RUN apt-get update && \
    apt install unzip -y && \
    apt install wget -y && \
    chmod +x /tmate.sh

# Run tmate.sh as the default command when the container starts
CMD ["/tmate.sh"]
