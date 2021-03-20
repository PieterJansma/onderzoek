#!/bin/bash

DIR=$1



function h1 {
	echo ${FUNCNAME[0]}
	zless /net/corpora/twitter2/Tweets/2021/01/*.gz  | /net/corpora/twitter2/tools/tweet2tab -i user |\
	wc -l
}

h1
