FROM scratch

WORKDIR /app
COPY caddy /app

EXPOSE 8080
EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/app/caddy"]

