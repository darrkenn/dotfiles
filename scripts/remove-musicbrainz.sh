#!/bin/bash


remove_musicbrainz() {
	kid3-cli -c "set musicbrainz_albumid \"\"" "$1"
	kid3-cli -c "set musicbrainz_albumartistid \"\"" "$1"
	kid3-cli -c "set musicbrainz_artistid \"\"" "$1"
	kid3-cli -c "set musicbrainz_releasegroupid \"\"" "$1"
	kid3-cli -c "set musicbrainz_releasetrackid \"\"" "$1"
	kid3-cli -c "set musicbrainz_albumstatus \"\"" "$1"
	kid3-cli -c "set musicbrainz_albumtype \"\"" "$1"
}

if [[ -n $1 ]]; then
	if [[ $1 == "folder" ]]; then
		for file in "$2"/*; do
			if [[ -f "$file" ]]; then
				echo "Changing file $file"
				remove_musicbrainz "$file"
			fi
		done
	else 
		remove_musicbrainz "$1"
	fi
else 
	echo "No file specified"
fi


