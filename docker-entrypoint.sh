#!/bin/sh
set -e

echo "---- ci build info: ${CI_BUILD_INFO}"

exec "/app/bin/${PROJECT_NAME}"
