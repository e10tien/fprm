#!/bin/bash

# Author: Martine Elzinga
# Date: 29.02.2022
# File name: second_analysis.sh
# Compares frequency of 'genant' versus 'awkward' in the karora database.

function genant {
    echo 'Total occurences of "genant":'

    DAY1=`zless /net/corpora/twitter2/Tweets/2021/11/20211128:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY2=`zless /net/corpora/twitter2/Tweets/2021/12/20211213:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY3=`zless /net/corpora/twitter2/Tweets/2021/12/20211219:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY4=`zless /net/corpora/twitter2/Tweets/2022/01/20220115:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY5=`zless /net/corpora/twitter2/Tweets/2022/02/20220201:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    echo $DAY1, $DAY2, $DAY3, $DAY4, $DAY5
    echo $(($DAY1+$DAY2+$DAY3+$DAY4+$DAY5))
}


function awkward {
    echo 'Total occurences of "awkward":'

    DAY1=`zless /net/corpora/twitter2/Tweets/2021/11/20211128:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY2=`zless /net/corpora/twitter2/Tweets/2021/12/20211213:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY3=`zless /net/corpora/twitter2/Tweets/2021/12/20211219:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY4=`zless /net/corpora/twitter2/Tweets/2022/01/20220115:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY5=`zless /net/corpora/twitter2/Tweets/2022/02/20220201:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    echo $DAY1, $DAY2, $DAY3, $DAY4, $DAY5
    echo $(($DAY1+$DAY2+$DAY3+$DAY4+$DAY5))
}

genant
awkward
