BASE_DIR=/home/alice/photos
SHARE_DIR=/home/alice/test
TIMESTAMP=`date +%s`
FILENAME="$TIMESTAMP.jpg"

raspistill -n -o - |  convert -rotate 90 jpg:- "$BASE_DIR/$FILENAME"
cp "$BASE_DIR/$FILENAME" "$SHARE_DIR/$FILENAME"
