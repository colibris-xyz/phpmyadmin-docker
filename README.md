[![Releases](https://img.shields.io/gitlab/v/release/colibris-xyz/phpmyadmin-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/phpmyadmin-docker/-/releases)
[![Build status](https://img.shields.io/gitlab/pipeline-status/colibris-xyz/phpmyadmin-docker?branch=main&gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/phpmyadmin-docker/-/pipelines)
[![License](https://img.shields.io/gitlab/license/colibris-xyz/phpmyadmin-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/phpmyadmin-docker/-/blob/main/LICENSE)

# All-in-one (nginx + php-fpm) Docker image for phpMyAdmin

Based on the [nginx + php-fpm image from TrafeX](https://hub.docker.com/r/trafex/alpine-nginx-php7) and the [official phpMyAdmin image](https://hub.docker.com/_/phpmyadmin/), this Docker image is an alternative to the official php-fpm one, since it's [not really usable](https://github.com/phpmyadmin/docker/issues/284).

# Environment variables

All environment variables exposed in the official image are available, with just one addition :
- `PMA_BLOWFISH_SECRET` - define the blowfish secret
