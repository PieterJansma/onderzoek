#!/bin/bash

DIR=$1


function h1 {
	echo ${FUNCNAME[0]}
	zless /net/corpora/twitter2/Tweets/2019/01/*.gz  | /net/corpora/twitter2/tools/tweet2tab text |\
	grep -Eo '\w+'| grep -i -w "verdrietig" | wc -l

}


h1
