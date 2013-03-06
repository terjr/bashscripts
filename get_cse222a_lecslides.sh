for pdf in `curl http://cseweb.ucsd.edu/classes/wi13/cse222A-a/syllabus.html --silent | grep 222A-wi13-l | sed 's/.*\/\(222A-wi13-l[0-9]*\.pdf\)".*/\1/'`; do
    if [ ! -f cse222a-pdfs/$pdf ];
    then
        curl http://cseweb.ucsd.edu/classes/wi13/cse222A-a/lectures/$pdf > cse222a-pdfs/$pdf;
    fi
done
