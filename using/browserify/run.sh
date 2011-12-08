#!/bin/sh

echo changing to directory `dirname $0`
cd `dirname $0`

mkdir node_modules 1> /dev/null 2> /dev/null

echo install browserify
npm  install browserify

echo run browserify

cd ../..
using/browserify/node_modules/.bin/browserify sample.js -o using/browserify/sample.browserified.js
cd using/browserify

echo run sample, check debug console
open sample.browserified.html