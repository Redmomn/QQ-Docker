#!/bin/bash

file="$1"
extracted="./qq_extracted"

dpkg -x "$file" "$extracted"

version=$(jq -r '.version' "$extracted/opt/QQ/resources/app/package.json")

rm -r "$extracted"

echo "$version"
