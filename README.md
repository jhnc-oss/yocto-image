# Yocto Image

[![ci](https://github.com/jhnc-oss/yocto-image/actions/workflows/ci.yml/badge.svg)](https://github.com/jhnc-oss/yocto-image/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)

Basic Fedora based image for [Yocto](https://www.yoctoproject.org/) builds. It contains [all packages](https://docs.yoctoproject.org/current/ref-manual/system-requirements.html#required-packages-for-the-build-host) needed to build a headless image.

## Published Images

Images are available on [GHCR](https://github.com/jhnc-oss/yocto-image/pkgs/container/yocto-image%2Fyocto).

### Tags

| Tag | Base | Status |
|:---:|:----:|:------:|
| `40` | Fedora 40 | |
| `39` | Fedora 39 | |
| `38` | Fedora 38 | |
| `37` | Fedora 37 | EOL |
| `36` | Fedora 36 | EOL |
| `35` | Fedora 35 | EOL |
| `34` | Fedora 34 | EOL |
| `33` | Fedora 33 | EOL |
| `32` | Fedora 32 | EOL |

## Local build

Build the image local using podman:

```sh
$ podman build --file yocto-fc/Dockerfile \
            --build-arg FC_VERSION=<Fedora Version> \
            --tag <Image Tag>
```
