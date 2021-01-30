#!/bin/sh
docker run -it --rm --name test -v "$PWD":/usr/src/myapp -w /usr/src/myapp elixir elixir rocket.exs
