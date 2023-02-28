#!/bin/sh
cd /app

if [ -f package.json ]; then
    npm install
    npm run build
    npm run dev
fi