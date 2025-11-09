#!/bin/bash

SOURCE=/opt/010825-ptm/kateryna/source

mkdir -p "$SOURCE"

cd "$SOURCE" || exit

for i in {1..100}; do
        name=$RANDOM
        touch "$name"
done

echo "Sozdano 100 failov so sluchainymi imenami v $SOURCE"
