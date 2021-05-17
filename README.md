# simple-http-server

Simple http-server to serve files locally.

**_WARNING_**: DO NOT run this in Production. This is purely a convenience tool.

## Using

To serve files, stand the server up with this docker command.
Make sure you map (as a volume with `/serve`) the directory you wish to serve:

```sh
docker run --rm \
    -v <directory-to-serve>:/serve \
    -p 8081:8000 \
    cviorel/simple-http-server:latest
```

To serve your current directory, use:

```sh
docker run --rm \
    -v $(pwd):/serve \
    -p 8081:8000 \
    cviorel/simple-http-server:latest
```

Add a bash function to your profile to avoid typing that all out:

```sh
simple-http-server() {
    docker run --rm \
        -v $(pwd):/serve \
        -p 8081:8000 \
        cviorel/simple-http-server:latest
}
```

And then use it with `simple-http-server`.
