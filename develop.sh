#!/bin/sh
docker run -it --rm -p 8085:8085 -p 4001:4001 -p 4002:4002 -p 8081:80 -v "$PWD":/usr/src/myapp -w /usr/src/myapp elixir /bin/bash
