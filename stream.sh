DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

STREAM='https://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8'

if [ $# -gt 0 ]
then
    STREAM=$1
fi

sudo docker-compose exec ffserver ffmpeg -i $STREAM http://127.0.0.1:8090/feed1.ffm
