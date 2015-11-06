# Node Buildbox

This is heavy weighted docker container which used only to build node application.
It should not be used in production runtime to run service instances. It's
goal is to include basic node build tools like gcc, make, etc and separate it
from light weighted runtime container.

## Building

When you need to install some modules which should be compiled with gcc run in
project directory:

```bash
docker run --rm -v $PWD:/app -w /app rumkin/alpine-node-buildbox npm install
```

It will download and install all modules into node_modules directory.
