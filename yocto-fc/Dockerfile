ARG FC_VERSION=36

FROM docker.io/fedora:${FC_VERSION}

LABEL \
    org.opencontainers.image.title="yocto" \
    org.opencontainers.image.description="Fedora based image for Yocto builds" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/yocto-image" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/yocto-image" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

RUN dnf update -y && \
    dnf install -y \
        bzip2 \
        cargo \
        ccache \
        chrpath \
        cpio \
        cpp \
        diffstat \
        diffutils \
        fd-find \
        file \
        findutils \
        gawk \
        gcc \
        gcc-c++ \
        git \
        glibc-devel \
        glibc-langpack-en \
        glibc-locale-source \
        gzip \
        hostname \
        krb5-devel \
        langpacks-en \
        libacl \
        libstdc++-static \
        lz4 \
        make \
        mesa-libGL-devel \
        patch \
        perl \
        perl-bignum \
        perl-Data-Dumper \
        perl-File-Compare \
        perl-File-Copy \
        perl-FindBin \
        perl-locale \
        perl-Text-ParseWords \
        perl-Thread-Queue \
        python \
        python3 \
        python3-devel \
        python3-GitPython \
        python3-jinja2 \
        python3-pexpect \
        python3-pip \
        python3-setuptools \
        python3-toml \
        quilt \
        ripgrep \
        rpcgen \
        SDL-devel \
        socat \
        tar \
        texinfo \
        tmux \
        tree \
        unzip \
        vim \
        vim-minimal \
        wget \
        which \
        xterm \
        xz \
        zstd && \
    dnf clean all && \
    rm -rf /var/cache/dnf

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

ENV YOCTO_DIR="/opt/yocto"
RUN groupadd -g 1000 yocto && \
    adduser yocto -d ${YOCTO_DIR} -g yocto -u 1000 && \
    echo "%yocto ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/yocto && \
    chmod 0440 /etc/sudoers.d/yocto

USER yocto
WORKDIR ${YOCTO_DIR}

ENV PATH="${YOCTO_DIR}/.local/bin:${PATH}"
RUN pip install --no-cache-dir --user -U gitrepo==2.32.2 && \
    git config --global user.name yocto && \
    git config --global user.email yocto@localhost && \
    git config --global color.ui never && \
    git config --global init.defaultBranch "main"

CMD ["/bin/bash"]
