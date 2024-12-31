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
    dpkg -i --force-depends linuxqq.deb && rm linuxqq.deb && \
    rm -f \
    /opt/QQ/chrome_100_percent.pak \
    /opt/QQ/chrome_200_percent.pak \
    /opt/QQ/chrome-sandbox \
    /opt/QQ/libEGL.so \
    /opt/QQ/libGLESv2.so \
    /opt/QQ/libvk_swiftshader.so \
    /opt/QQ/libvulkan.so.1 \
    /opt/QQ/LICENSE.electron.txt \
    /opt/QQ/LICENSES.chromium.html \
    /opt/QQ/resources.pak \
    /opt/QQ/snapshot_blob.bin \
    /opt/QQ/version.json \
    /opt/QQ/vk_swiftshader_icd.json \
    /opt/QQ/resources/app/application.json \
    /opt/QQ/resources/app/AudioFoundation.dylib \
    /opt/QQ/resources/app/AudioFoundation.node \
    /opt/QQ/resources/app/cacert.pem \
    /opt/QQ/resources/app/initIpc_ia32.node \
    /opt/QQ/resources/app/initIpc_x64.node \
    /opt/QQ/resources/app/iohook.node \
    /opt/QQ/resources/app/libunwind.so.8 \
    /opt/QQ/resources/app/libunwind-x86_64.so.8 \
    /opt/QQ/resources/app/pub.key \
    /opt/QQ/resources/app/rsds.log \
    /opt/QQ/resources/app/screencast.gjs \
    /opt/QQ/resources/app/sharp-linux-x64.node && \
    rm -rf \
    /opt/QQ/locales/ \
    /opt/QQ/resources/app/app_luncher/  \
    /opt/QQ/resources/app/application/ \
    /opt/QQ/resources/app/avsdk/ \
    /opt/QQ/resources/app/resource/