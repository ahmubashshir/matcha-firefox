#!/bin/sh -x
mkdir -p dist
rm -f dist/manifest.json
pysassc theme.scss /dev/stdout |
	yq --from-file ./lib/transform.jq |
	sed -ne 'w dist/manifest.json'
