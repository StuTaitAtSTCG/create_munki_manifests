#!/bin/bash

if [ -d "./Manifests" ]; then
    echo "Manifests folder already exists."
else
    mkdir "./Manifests"
    echo "Manifests folder created."
fi

while IFS='' read -r line || [[ -n "$line" ]]; do
	touch "./Manifests/$line.xml"
	cat "munki_manifest_template.xml" > "./Manifests/$line.xml"
    echo "- Created $line.xml"
done < "$1"

echo "Finished"
