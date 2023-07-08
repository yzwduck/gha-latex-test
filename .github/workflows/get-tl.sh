#!/bin/bash

set -xe

echo "hello"
echo "/tmp/some_dir" >> "$GITHUB_PATH"

curl -fLo "$RUNNER_TEMP/texlive.iso" https://mirror.ctan.org/systems/texlive/Images/texlive.iso
mkdir -p "$RUNNER_TEMP/tl"
7z e -o "$RUNNER_TEMP/tl" "$RUNNER_TEMP/texlive.iso"
rm "$RUNNER_TEMP/texlive.iso"
ls -al "$RUNNER_TEMP/tl/"
