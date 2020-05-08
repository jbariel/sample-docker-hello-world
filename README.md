# Docker hello-world
Recreate the [`hello-world`](https://hub.docker.com/_/hello-world) image with a Dockerfile and bash script.

## Building the image:
`docker build -t <name>:<tag> .`

## Running the image
`docker run --rm <name>:<tag>`

## Seeing your name
```
  docker build -t <name>:<tag> . \ # Builds the image
    && docker run --rm <name>:<tag> \ # Outputs "Hello World!"
    && docker run --rm -e USER_NAME=<your name> <name>:<tag> # Outputs "Hello <your name>!"
```

# License
Licensed under the Apache 2.0 License.
