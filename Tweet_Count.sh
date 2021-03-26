#!/bin/bash

DIR=$1

# Deze script telt hoe veel tweets er in totaal zijn gemaakt



function h1 {
	echo ${FUNCNAME[0]}
	zless /net/corpora/twitter2/Tweets/2021/01/*.gz  | /net/corpora/twitter2/tools/tweet2tab -i user |\ # hier moet een document komen waar alle gebruikersnamen
													    #per tweet in staan, deze command gebruikt je als de RUG databass bezit.
	wc -l # telt alle regels, aangezien elk gebruikersnaam op een aparte regel staat werkt het.
}

h1
