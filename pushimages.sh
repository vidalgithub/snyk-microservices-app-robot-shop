#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Need to pass the image tag as the 1st argument"
  else
    for IMG in $(cat imagelist)
      do
        if [[ $IMG = purpledobie* ]]
          then
            echo "Pushing $IMG:$1"
            docker push $IMG:$1   
          else
	    echo "Skip pushing $IMG"
        fi
    done
fi
 