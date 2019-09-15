BASE_DIR=/home/alice/photos
SHARE_DIR=/home/alice/test
TIMESTAMP=`date +%s`
FILENAME="$TIMESTAMP.jpg"

# take photo
raspistill -n -o - |  convert -rotate 90 jpg:- "$BASE_DIR/$FILENAME"

# copy it into the share dir
cp "$BASE_DIR/$FILENAME" "$SHARE_DIR/$FILENAME"
