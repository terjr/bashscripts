#!/bin/bash
if [ ! -d "cse222a-pdfs" ]; then mkdir "cse222a-pdfs"; fi
for pdf in `curl http://cseweb.ucsd.edu/classes/wi13/cse222A-a/syllabus.html --silent | grep 222A-wi13-l | sed 's/.*\/\(222A-wi13-l[0-9]*\.pdf\)".*/\1/'`; do
    if [ ! -f cse222a-pdfs/$pdf ];
    then
        curl --silent http://cseweb.ucsd.edu/classes/wi13/cse222A-a/lectures/$pdf -o cse222a-pdfs/$pdf &
    fi
done
wait
echo "Done!"
