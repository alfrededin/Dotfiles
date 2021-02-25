#!/bin/bash

plats=$( curl -s 'https://webcloud.sl.se/api/departures?mode=departures&origId=9807&desiredResults=3&origName=%C3%85rstadal+%28Stockholm%29' | jq '[ .[] |select(.track=="1") ] | .[0] | {plats: .destination, tid: .time.displayTime}' | jq -r '.plats' )

tid=$( curl -s 'https://webcloud.sl.se/api/departures?mode=departures&origId=9807&desiredResults=3&origName=%C3%85rstadal+%28Stockholm%29' | jq '[ .[] |select(.track=="1") ] | .[0] | {plats: .destination, tid: .time.displayTime}' | jq -r '.tid' )

if [ "$tid" == "5 min" ]; then
  icon="%{F#f9dd04}%{F-}"
elif [ "$tid" == "4 min" ]; then
  icon="%{F#f9dd04}%{F-}"
elif [ "$tid" == "3 min" ]; then
  icon="%{F#d60606}%{F-}"
elif [ "$tid" == "2 min" ]; then
  icon="%{F#d60606}%{F-}"
elif [ "$tid" == "1 min" ]; then
  icon="%{F#d60606}%{F-}"
elif [ "$tid" == "Nu" ]; then
  icon="%{F#d60606}%{F-}"
else
  echo " $plats: ${tid}"
fi
echo "$icon $plats: ${tid}"
