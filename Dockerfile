# Use an official Ubuntu as a base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    libuv1-dev \
    libssl-dev \
    libhwloc-dev

# Clone XMRig repository
RUN git clone https://github.com/xmrig/xmrig.git

# Build XMRig
RUN mkdir xmrig/build && cd xmrig/build && \
    cmake .. && \
    make -j$(nproc)

# Set up config file (replace with your own config)
COPY config.json /xmrig/build/config.json

# Expose mining port (optional)
EXPOSE 3333

# Set working directory
WORKDIR /xmrig/build

# Command to run XMRig
CMD ["./xmrig", "--config=config.json"]
