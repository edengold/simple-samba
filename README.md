# simple-samba

This is a simple samba server exposing a public folder.

## Getting Started

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Volumes

* `/etc/samba` - Samba configuration file location
* `/mnt/public` - Samba public share folder

#### Ports

* `445/tcp` - Samba service port

#### How to deploy

```shell
docker run -d -p 445:455 -v SMB_CONF_FOLDER:/etc/samba -v FOLDER_TO_SHARE:/mnt/public pkbox/simple-samba:latest
```

## Built With

```shell
docker buildx build --push --platform linux/amd64,linux/arm64 -t DOCKER_USERNAME/simple-samba:dev .
```