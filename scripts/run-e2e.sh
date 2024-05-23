#!/usr/bin/env bash

DIR="$(cd "$(dirname "$0")" && pwd)"
$DIR/db-startup.sh

if [ "$#" -eq  "0" ]
  then
    pnpm playwright test
else
    pnpm playwright test --headed
fi