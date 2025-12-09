#!/usr/bin/env bash
set -e
export PATH="/usr/local/bin:$PATH"


# Matar instâncias anteriores do serve
pkill -f "serve" || true

cd /appdir/build

# Inicia o servidor React SPA em background
nohup npx serve -s . -l 3000 > /logs/app/stdout/stdout.log 2> /logs/app/stderr/stderr.log &
echo "React SPA iniciado na porta 3000."
