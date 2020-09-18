FROM alpine:latest
ARG VERSION
RUN apk update \
    && apk add curl \
    && echo "Installin kubectl version: ${VERSION}" \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$VERSION/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && echo "Installed kubectl version ${VERSION}"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]