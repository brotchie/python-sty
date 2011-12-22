#!/bin/sh
mkdir -p .build
rubber -d --shell-escape --into=.build example.tex && cp .build/example.pdf .
