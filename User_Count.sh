#!/bin/bash

DIR=$1

# Deze script telt hoe veel unieke gebruikers er zijn een bepaalde periode.

function h1 {
	echo ${FUNCNAME[0]}
	zless /net/corpora/twitter2/Tweets/2019/01/*.gz  | /net/corpora/twitter2/tools/tweet2tab -i user |\ # hier moet een document komen waar alle gebruikersnamen
													    #per tweet in staan, deze command gebruikt je als de RUG databass bezit.
	sort | uniq -c | # sorteert alles en haalt duplicaten er uit.
	wc -l # telt hoeveel regels, oftewel hoeveel unieke gebruikers er zijn
}

h1
