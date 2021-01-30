#!/bin/sh
docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp elixir /bin/bash
