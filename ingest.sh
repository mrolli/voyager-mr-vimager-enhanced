#!/usr/bin/env bash

zipfile=$1
prefix=zsa_voyager_mr-vimager

if [ -z "$zipfile" ]; then
  echo >&2 "No zipfile provided. Exiting."
  exit 1
fi

if [ ! -f "$zipfile" ]; then
  echo >&2 "Zip file not found. Exiting."
  exit 1
fi

unzip -o "$zipfile"

if [ ! -d "${prefix}_source" ]; then
  echo >&2 "No source directory found to ingest. Exiting."
  exit 1
fi

mv ${prefix}_source/* source/
mv ${prefix}*{.bin,.md5} firmwares/
rmdir ${prefix}_source
