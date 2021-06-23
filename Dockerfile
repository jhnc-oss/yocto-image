FROM fedora:34 

RUN dnf install -y \
        gawk \
        make \
        wget \
        tar \
        bzip2 \
        gzip \
        python3 \
        unzip \
        perl \
        patch \
        diffutils \
        diffstat \
        git \
        cpp \
        gcc \
        gcc-c++ \
        glibc-devel \
        texinfo \
        chrpath \
        ccache \
        perl-Data-Dumper \
        perl-Text-ParseWords \
        perl-Thread-Queue \
        perl-bignum \
        socat \
        python3-pexpect \
        findutils \
        which \
        file \
        cpio \
        python \
        python3-pip \
        xz \
        python3-GitPython \
        python3-jinja2 \
        SDL-devel \
        xterm \
        rpcgen \
        mesa-libGL-devel \
        perl-FindBin \
        perl-File-Compare \
        perl-File-Copy \
        perl-locale \
        glibc-langpack-en \
        glibc-locale-source && \
    dnf clean all && \
    rm -rf /var/cache/dnf


ENV LANG=en_US.UTF-8
ENV LC_ALL=${LANG}
RUN localedef --force -i en_US -f UTF-8 ${LANG}

ENV YOCTO_DIR="/opt/yocto"
RUN groupadd -g 4040 yocto && \
    adduser yocto -d ${YOCTO_DIR} -g yocto -u 1006 && \
    echo "%yocto ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/yocto && \
    chmod 0440 /etc/sudoers.d/yocto

USER yocto
WORKDIR ${YOCTO_DIR}
CMD ["/bin/bash"]