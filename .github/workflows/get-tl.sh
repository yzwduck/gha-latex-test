#!/bin/bash

set -xe

echo "hello"
uname
uname -sr
uname -a
echo "/tmp/some_dir" >> "$GITHUB_PATH"

mkdir -p "$RUNNER_TEMP/tl"
curl -fLo "$RUNNER_TEMP/texlive.iso" https://mirror.ctan.org/systems/texlive/Images/texlive.iso
7z x -o"$RUNNER_TEMP/tl" "$RUNNER_TEMP/texlive.iso"
rm "$RUNNER_TEMP/texlive.iso"
ls -al "$RUNNER_TEMP/tl/"
