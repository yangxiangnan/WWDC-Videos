#!/bin/bash

src=${1}
echo "decoding ${src} ..."
cat ${src} | sed $'s/\\\r//g' | sed 's/&gt;/>/g' | sed 's/&lt;/</g' | sed 's/&amp;/\&/g' > srt.txt
mv -f srt.txt ${src}