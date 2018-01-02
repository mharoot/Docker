# Docker

### Create a full Image using `tar`
In general, you’ll want to start with a working machine that is running the distribution you’d like to package as a parent image, though that is not required for some tools like Debian’s Debootstrap, which you can also use to build Ubuntu images.

- It can be as simple as this to create an Ubuntu parent image:

  - sudo debootstrap xenial xenial > /dev/null
  - sudo tar -C xenial -c . | docker import - xenial
  - a29c15f1bf7a
  - docker run xenial cat /etc/lsb-release
```bash
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04 LTS"
```
