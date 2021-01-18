FILE1=$1
FILE2=$2
if [ -d "$FILE1" ]; then
    echo "$FILE1 is a directory."
    exit 1
fi

if [ -d "$FILE2" ]; then
    echo "$FILE2 is a directory."
    exit 1
fi

if ! [[ -f "$FILE1" ]]; then
    echo "$FILE1 does not exist."
    exit 1
fi

if ! [[ -f "$FILE2" ]]; then
    echo "$FILE2 does not exist."
    exit 1
fi

grep -vFf $FILE1 $FILE2 >$FILE2.tmp && mv $FILE2.tmp $FILE2
