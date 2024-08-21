FROM initialencounter/dotnet:latest

COPY entrypoint.sh /app/
COPY Lagrange.OneBot app/bin/

RUN apt-get update && apt-get install -y gosu ca-certificates && \
apt-get clean && rm -rf /var/lib/apt/lists/* && \
apt-get autoremove -y && apt-get autoclean -y

RUN chmod +x /app/entrypoint.sh && useradd -m user && \
mkdir -p /tmp/dotnet-bundle-extract && chmod 777 /tmp/dotnet-bundle-extract

ENV DOTNET_BUNDLE_EXTRACT_BASE_DIR=/tmp/dotnet-bundle-extract
WORKDIR /app/data

ENTRYPOINT ["/app/entrypoint.sh"]