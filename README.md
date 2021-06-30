# Yocto Image

[![ci](https://github.com/jhnc-oss/yocto-image/actions/workflows/ci.yml/badge.svg)](https://github.com/jhnc-oss/yocto-image/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)

Basic Fedora based image for [Yocto](https://www.yoctoproject.org/) builds. It contains [all packages](https://docs.yoctoproject.org/current/ref-manual/system-requirements.html#required-packages-for-the-build-host) needed to build a headless image.

Build the image using podman:
```
$ podman build --tag fc34:yocto -f ./Dockerfile
```

The image should now be visible in local registry:
```
$ podman images
REPOSITORY                                        TAG     IMAGE ID      CREATED        SIZE
localhost/fc34                                    yocto   90bb9e120a36  2 minutes ago  777 MB
registry.fedoraproject.org/fedora                 34      abec9a7a7dc6  2 weeks ago    184 MB
```

Run and enter the container:
```
$ podman run -it --name yocto --rm fc34:yocto
$ cat /etc/fedora-release
Fedora release 34 (Thirty Four)
```
