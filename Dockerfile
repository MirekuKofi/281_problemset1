FROM ubuntu:22.04

RUN apt-get clean && \
    apt-get update && \
    apt-get install -y wget \
                       curl \
                       python3 \
                       python3-pip && \
    rm -rf /var/lib/apt/lists/*


# add entrypoint script, this is script that will initiate once docker container is run
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# always add code to make bash scripts executable in docker containers
RUN chmod +x /usr/local/bin/entrypoint.sh

#set entrypoint, so it runs when docker starts
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
