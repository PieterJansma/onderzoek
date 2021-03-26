#!/bin/bash
# Deze script telt hoe vaak een bepaald word voorkomt in een aangeven document/map.

DIR=$1


function h1 {
	echo ${FUNCNAME[0]}
	cat $FIlE |\ # Hier wordt de plek waar gezocht moet worden in geladen, als de database van rug gebruikt wordt gebruik je het colgende: 
	#zless /net/corpora/twitter2/Tweets/2019/01/*.gz  | /net/corpora/twitter2/tools/tweet2tab text, in plaat van cat $FILE
	grep -Eo '\w+'|\ # Hier wordt elk woord op een aparte regel gezet(tokenisen)
	grep -i -w "word" |\ # Hier moet het woord dat naar gezocht moet worden in gezet, het programma zoekt naar de regels waar dat word zich bevind.
	wc -l # telt elke regel waar het aangegeven woord zich bevind en telt alles bij elkaar op.

}


h1 
