# Use ubuntu:latest as the base image
FROM ubuntu:latest

# Copy tmate.sh to the root directory of the image
COPY tmate.sh /

# Run commands to update the package list, install unzip, wget, and apache2, and make tmate.sh executable
RUN apt-get update && \
    apt install unzip -y && \
    apt install wget -y && \
    apt install apache2 -y && \
    chmod +x /tmate.sh

# Run tmate.sh as the default command when the container starts
CMD ["/tmate.sh"]

# Expose port 80 for the web server
EXPOSE 80
