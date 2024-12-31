FROM redmomn/qq-docker:base

ARG QQ_DOWNLOAD_URL_AMD64
ARG QQ_DOWNLOAD_URL_ARM64

WORKDIR /app

RUN arch=$(arch) && \
    case "$arch" in \
    x86_64) DOWNLOAD_URL=$QQ_DOWNLOAD_URL_AMD64 ;; \
    aarch64) DOWNLOAD_URL=$QQ_DOWNLOAD_URL_ARM64 ;; \
    *) echo "Unsupported architecture: $arch" && exit 1 ;; \
    esac && \
    echo "Downloading from: $DOWNLOAD_URL" && \
    curl -o linuxqq.deb "$DOWNLOAD_URL" && \
    dpkg -i --force-depends linuxqq.deb && rm linuxqq.deb
