#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	touch "./Manifests/$line.xml"
	cat "munki_manifest_template.xml" > "./Manifests/$line.xml"
done < "$1"
