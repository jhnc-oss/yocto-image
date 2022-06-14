# Yocto Image

[![ci](https://github.com/jhnc-oss/yocto-image/actions/workflows/ci.yml/badge.svg)](https://github.com/jhnc-oss/yocto-image/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)

Basic Fedora based image for [Yocto](https://www.yoctoproject.org/) builds. It contains [all packages](https://docs.yoctoproject.org/current/ref-manual/system-requirements.html#required-packages-for-the-build-host) needed to build a headless image.

## Published Images

Images are available on [GHCR](https://github.com/jhnc-oss/yocto-image/pkgs/container/yocto-image%2Fyocto).

### Tags

| Tag | Base | Status |
|:---:|:----:|:------:|
| `36` | Fedora 36 | |
| `35` | Fedora 35 | |
| `34` | Fedora 34 | |
| `33` | Fedora 33 | EOL |
| `32` | Fedora 32 | EOL |
| `latest` | Fedora 34 | EOL |

## Local build

Build the image local using podman:

```sh
$ podman build --tag yocto:34 -f ./fedora-34/Dockerfile
```

The image is visible in local registry now:

```sh
$ podman images
REPOSITORY                                        TAG     IMAGE ID      CREATED        SIZE
localhost/yocto                                   34      90bb9e120a36  2 minutes ago  777 MB
```

Run and enter the container:

```sh
$ podman run -it --name yocto --rm yocto:34
$ cat /etc/fedora-release
Fedora release 34 (Thirty Four)
```
