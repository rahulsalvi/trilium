FROM triliumnext/trilium:v0.97.2

RUN mkdir -p /usr/local/share/ca-certificates
COPY ext/pki/tls/*.crt /usr/local/share/ca-certificates
RUN apk --no-cache add ca-certificates && update-ca-certificates

ENV NODE_OPTIONS=--use-openssl-ca
