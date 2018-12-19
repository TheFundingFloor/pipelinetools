FROM alpine:latest
RUN apk add --no-cache perl python3 jq bash curl && \
    pip3 install --upgrade pip setuptools httpie 
WORKDIR /root
COPY --chown=775 . .
ENTRYPOINT "/bin/bash"

