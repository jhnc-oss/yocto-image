FROM fedora:33

LABEL \
    org.opencontainers.image.title="yocto" \
    org.opencontainers.image.description="Fedora based image for Yocto builds" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/yocto-image" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/yocto-image" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

RUN dnf remove -y vim-minimal && \
    dnf install -y \
        bzip2 \
        ccache \
        chrpath \
        cpio \
        cpp \
        diffstat \
        diffutils \
        file \
        findutils \
        gawk \
        gcc \
        gcc-c++ \
        git \
        glibc-locale-source \
        glibc-devel \
        glibc-langpack-en \
        glibc-locale-source \
        gzip \
        hostname \
        make \
        mesa-libGL-devel \
        patch \
        perl \
        perl-bignum \
        perl-Data-Dumper \
        perl-Text-ParseWords \
        perl-Thread-Queue \
        python \
        python3 \
        python3-GitPython \
        python3-jinja2 \
        python3-pexpect \
        python3-pip \
        rpcgen \
        SDL-devel \
        socat \
        tar \
        texinfo \
        tmux \
        tree \
        unzip \
        vim \
        wget \
        which \
        xterm \
        xz \
        langpacks-en && \
    dnf clean all && \
    rm -rf /var/cache/dnf

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
RUN localedef --force -i en_US -f UTF-8 en_US.UTF-8

ENV YOCTO_DIR="/opt/yocto"
RUN groupadd -g 4040 yocto && \
    adduser yocto -d ${YOCTO_DIR} -g yocto -u 1006 && \
    echo "%yocto ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/yocto && \
    chmod 0440 /etc/sudoers.d/yocto

USER yocto
WORKDIR ${YOCTO_DIR}
CMD ["/bin/bash"]

