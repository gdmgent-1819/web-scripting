#!/bin/sh

languages=( markdown )

for language in "${languages[@]}"
do
    cp ${language}.json ~/Library/Application\ Support/Code/User/snippets/${language}.json
done