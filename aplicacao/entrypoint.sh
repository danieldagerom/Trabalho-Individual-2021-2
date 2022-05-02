#!/bin/bash
set -e

# Remove um potencial server.pid pré existente no Rails
rm -f /aplicacao/tmp/pids/server.pid

# Então executa o principal processo do container (que foi setado por "CMD" no Dockerfile)
exec "$@"