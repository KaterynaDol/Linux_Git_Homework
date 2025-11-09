#!/bin/bash

SOURCE=/opt/010825-ptm/kateryna/source
DEST=/opt/010825-ptm/kateryna/even

mkdir -p "$DEST"

even_count=0
odd_count=0
total_count=0


for FILE in "$SOURCE"/*; do
echo "Obrabatyvaiu fail: $FILE"
        BASENAME=$(basename "$FILE")
        if [[ "$BASENAME" =~ ^[0-9]+$ ]]; then
                ((total_count++))
                remainder=$(($BASENAME % 2))
                if [ "$remainder" -eq 0 ]; then
                        mv "$FILE" "$DEST/"
                        ((even_count++))
                else
                        ((odd_count++))
               fi
        fi
done

echo "Perenos zavershen!"
echo "Vsego chislovych failov naideno: $total_count"
echo "Chetnyh failov peremesheno: $even_count"
echo "Nechetnyh failov ostalos: $odd_count"
echo "Chetnye faily nahodiatsia v: $DEST"
