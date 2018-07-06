[![CircleCI](https://circleci.com/gh/bitnami/oraclelinux-runtimes/tree/master.svg?style=shield)](https://circleci.com/gh/bitnami/oraclelinux-runtimes/tree/master)

# `bitnami/oraclelinux-runtimes`

## TL;DR

```dockerfile
FROM bitnami/oraclelinux-runtimes:jessie
```

## About

The `bitnami/oraclelinux-runtimes` image is a customized base image for use in Bitnami runtimes container images and is built on top of the (Oracle Linux image) `bitnami/oraclelinux-extras` image prepared by Bitnami.

The Dockerfile just installs a minimal set of dependencies for runtimes like python or ruby.

## Usage

Use like a regular base image.

The following example uses the `install_packages` helper script to install APT packages from the Oracle Linux repositories. The `bitnami-pkg` tool to install `nami` packages published by Bitnami.

```dockerfile
FROM bitnami/oraclelinux-runtimes:jessie
ENV BITNAMI_APP_NAME=apache
RUN install_packages apr apr-util glibc libuuid expat pcre openldap cyrus-sasl-lib gnutls zlib p11-kit
...
CMD ["bash"]
```

## Contributing

We'd love for you to contribute to this container. You can request new features by creating an [issue](../../issues/new) or submitting a [pull request](../../issues/pull) with your contribution.

### Issues

If you encountered a problem running this container, you can file an [issue](../../issues/new). Be sure to include the following information in your issue:

- Host OS and version
- Output of:
  + `docker version`
  + `docker info`
- Steps to reproduce the issue
- Logging information with debug mode enabled

## License

Copyright 2015 - 2018 Bitnami

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
