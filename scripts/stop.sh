#!/bin/bash

# Mata o serve se estiver rodando
pkill -f "serve" || true

echo "Aplicação parada."
