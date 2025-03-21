FROM ubuntu:xenial

LABEL maintainer="Andy Voigt <voigt-andy@hotmail.de>"

ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

# 更新 apt-get 并安装必要的工具和依赖包
RUN apt-get update && \
    apt-get install -qy apt-utils locales && \
    locale-gen --no-purge en_US.UTF-8 && \
    apt-get install -qy \
        git \
        sudo \
        kmod \
        p7zip-full \
        build-essential \
        gawk \
        pkg-config \
        gettext \
        automake \
        autoconf \
        autopoint \
        libtool \
        bison \
        flex \
        zlib1g-dev \
        libgmp3-dev \
        libmpfr-dev \
        libmpc-dev \
        texinfo \
        mc \
        libncurses5-dev \
        nano \
        vim \
        gperf \
        python-docutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 克隆 rt-n56u-bitbucket 仓库
#RUN git clone https://github.com/h8820/rt-n56u.git /opt/rt-n56u

# 运行构建命令
#RUN cd /opt/rt-n56u/toolchain-mipsel && \
#    ./clean_sources && \
#   ./build_toolchain_3.4.x

# 设定工作目录（可以选择性添加，根据后续运行需要）
#WORKDIR /opt/rt-n56u
WORKDIR /workspace
