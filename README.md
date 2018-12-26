# Docker example

This repo provides an example containerizing an application made with [Bocadillo].

## Install

You just need to have [Docker] installed on your machine. :spouting-whale:

## Usage

First, build the image:

```bash
docker build . -t bocadillo-example
```

Then run the container:

```bash
docker run -p 8000:8000 bocadillo-example
```

The example app is accessible at [http://localhost:8000](http://localhost:8000).

Need more info? Read the [Dockerfile]. :+1:

[Bocadillo]: https://github.com/bocadilloproject/bocadillo
[Docker]: https://docs.docker.com/install/
[Dockerfile]: Dockerfile
