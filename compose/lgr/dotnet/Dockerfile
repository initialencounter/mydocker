FROM ubuntu:latest
RUN apt-get update && \
apt-get install -y dotnet-runtime-8.0 dotnet-runtime-8.0 && \
apt-get clean && rm -rf /var/lib/apt/lists/* && \
apt-get autoremove -y && apt-get autoclean -y