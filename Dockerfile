# Dockerfile of suite-reporting-platform-tp-deploy
FROM alpine

# Switching to root to install the required packages
USER root

# Install dependent application
RUN apt-get update && \
    apt-get install -y dos2unix && \
	apt-get install -y vim && \
	apt-get -y install curl

WORKDIR /app
RUN mkdir -p /app/my-code

CMD ["echo", "Hello, Docker Container created successfully..."]