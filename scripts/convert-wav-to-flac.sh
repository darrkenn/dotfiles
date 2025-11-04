#!/bin/bash

for f in track*.cdda.wav; do
  base="${f%.cdda.wav}"
  echo "converting $base.cdda.wav to $base.flac..."
  ffmpeg -i "$f" -compression_level 12 -sample_fmt s16 "${base}.flac"
done
