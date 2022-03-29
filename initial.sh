#!/bin/bash

# Author: Martine Elzinga
# Date: 29.03.2022
# File name: initial.sh
# The initial analysis, comparing the frequency of 'awkward' and 'genant' in the karora twitter database.
# It compares five days, and adds them.

function genant {
    echo 'Total occurences of "genant":'

    DAY1=`zless /net/corpora/twitter2/Tweets/2017/10/20171027:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY2=`zless /net/corpora/twitter2/Tweets/2018/02/20180206:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY3=`zless /net/corpora/twitter2/Tweets/2018/04/20180427:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY4=`zless /net/corpora/twitter2/Tweets/2019/04/20190414:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    DAY5=`zless /net/corpora/twitter2/Tweets/2021/11/20211102:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | wc -l`

    echo $DAY1, $DAY2, $DAY3, $DAY4, $DAY5
    echo $(($DAY1+$DAY2+$DAY3+$DAY4+$DAY5))
}

function awkward {
    echo 'Total of occurences of "awkward":'

    DAY1=`zless /net/corpora/twitter2/Tweets/2017/10/20171027:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY2=`zless /net/corpora/twitter2/Tweets/2018/02/20180206:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY3=`zless /net/corpora/twitter2/Tweets/2018/04/20180427:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY4=`zless /net/corpora/twitter2/Tweets/2019/04/20190414:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    DAY5=`zless /net/corpora/twitter2/Tweets/2021/11/20211102:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | wc -l`

    echo $DAY1, $DAY2, $DAY3, $DAY4, $DAY5
    echo $(($DAY1+$DAY2+$DAY3+$DAY4+$DAY5))
}

genant
awkward

function examples {
    echo '10 examples for genant:'
    zless /net/corpora/twitter2/Tweets/2021/11/20211102:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'genant' | \
    grep -v ^'RT' | head

    echo '10 examples for awkward:'
    zless /net/corpora/twitter2/Tweets/2021/11/20211102:*.out.gz | \
    /net/corpora/twitter2/tools/tweet2tab text | \
    grep -iw 'awkward' | \
    grep -v ^'RT' | head
}

examples
