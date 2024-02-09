#!/usr/bin/env bash

zipfile=$1

if [ -z "$zipfile" ]; then
  echo >&2 "No zipfile provided. Exiting."
  exit 1
fi

if [ ! -f "$zipfile" ]; then
  echo >&2 "Zip file not found. Exiting."
  exit 1
fi

unzip -o "$zipfile"

if [ ! -d "voyager_mr-vimegar_source" ]; then
  echo >&2 "No source directory found to ingest. Exiting."
  exit 1
fi

mv voyager_mr-vim*_source/* source/
mv voyager_mr-vim*{.bin,.md5} firmwares/
rmdir voyager_mr-vim*_source
