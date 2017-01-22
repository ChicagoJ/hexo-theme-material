#!/bin/bash

# Lint EJS files
for f in $(find ./layout -name "*.ejs"); do
  echo $f;
  node_modules/.bin/ejslint $f;
done

# Lint CSS files
for f in $(find ./source/ -name "*.css" | grep -v ".min.css"); do
  echo $f;
  node_modules/.bin/sass-lint -v -q $f;
done
