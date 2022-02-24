#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Need to pass the image tag as the 1st argument"
  else
    for IMG in $(cat imagelist)
      do
        echo "Running snyk container monitor $IMG:$1"
        snyk container monitor --app-vulns $IMG:$1
    done
fi

