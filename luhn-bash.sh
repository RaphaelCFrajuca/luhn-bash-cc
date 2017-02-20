#!/bin/bash
# BadGuy552
# Raphael Frajuca
# Script para calcular o numero verificador de um cartão de crédito

NUMBER=$1

NUM1=$(echo $1 | awk -F "" '{print $1}')
NUM2=$(echo $1 | awk -F "" '{print $2}')
NUM3=$(echo $1 | awk -F "" '{print $3}')
NUM4=$(echo $1 | awk -F "" '{print $4}')
NUM5=$(echo $1 | awk -F "" '{print $5}')
NUM6=$(echo $1 | awk -F "" '{print $6}')
NUM7=$(echo $1 | awk -F "" '{print $7}')
NUM8=$(echo $1 | awk -F "" '{print $8}')
NUM9=$(echo $1 | awk -F "" '{print $9}')
NUM10=$(echo $1 | awk -F "" '{print $10}')
NUM11=$(echo $1 | awk -F "" '{print $11}')
NUM12=$(echo $1 | awk -F "" '{print $12}')
NUM13=$(echo $1 | awk -F "" '{print $13}')
NUM14=$(echo $1 | awk -F "" '{print $14}')
NUM15=$(echo $1 | awk -F "" '{print $15}')
#NUM16=$(echo $1 | awk -F "" '{print $16}')
#NUM17=$(echo $1 | awk -F "" '{print $17}')
#NUM18=$(echo $1 | awk -F "" '{print $18}')
#NUM19=$(echo $1 | awk -F "" '{print $19}')
#NUM20=$(echo $1 | awk -F "" '{print $20}')

chk1=$(($NUM1 * 2))
chkk1=$(($chk1-9))
if [ "$chk1" -lt 9 ]
then
chkk1=$chk1
fi
chk3=$(($NUM3 * 2))
chkk3=$(($chk3-9))
if [ "$chk3" -lt 9 ]
then
chkk3=$chk3
fi
chk5=$(($NUM5 * 2))
chkk5=$(($chk5-9))
if [ "$chk5" -lt 9 ]
then
chkk5=$chk5
fi
chk7=$(($NUM7 * 2))
chkk7=$(($chk7-9))
if [ "$chk7" -lt 9 ]
then
chkk7=$chk7
fi
chk9=$(($NUM9 * 2))
chkk9=$(($chk9-9))
if [ "$chk9" -lt 9 ]
then
chkk9=$chk9
fi
chk11=$(($NUM11 * 2))
chkk11=$(($chk11-9))
if [ "$chk11" -lt 9 ]
then
chkk11=$chk11
fi
chk13=$(($NUM13 * 2))
chkk13=$(($chk13-9))
if [ "$chk13" -lt 9 ]
then
chkk13=$chk13
fi
chk15=$(($NUM15 * 2))
chkk15=$(($chk15-9))
if [ "$chk15" -lt 9 ]
then
chkk15=$chk15
fi

SUM=$(($chkk1+$NUM2+$chkk3+$NUM4+$chkk5+$NUM6+$chkk7+$NUM8+$chkk9+$NUM10+$chkk11+$NUM12+$chkk13+$NUM14+$chkk15))
R=$(($SUM*9))
NUMV=$(echo $R | awk -F "" '{print $3}')

echo "ORIGINAL: $NUMBER"
echo "NUMERO VERIFICADOR: $NUMV"
echo "NOVO: $NUMBER$NUMV"
