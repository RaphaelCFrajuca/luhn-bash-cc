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
v1="$NUM1*2=$chk1-9=$chkk1"
if [ "$chk1" -lt 9 ]
then
chkk1=$chk1
v1="$NUM1*2=$chkk1"
fi
echo "$v1"
echo "$NUM2"
chk3=$(($NUM3 * 2))
chkk3=$(($chk3-9))
v3="$NUM3*2=$chk3-9=$chkk3"
if [ "$chk3" -lt 9 ]
then
chkk3=$chk3
v3="$NUM3*2=$chkk3"
fi
echo "$v3"
echo "$NUM4"
chk5=$(($NUM5 * 2))
chkk5=$(($chk5-9))
v5="$NUM5*2=$chk5-9=$chkk5"
if [ "$chk5" -lt 9 ]
then
chkk5=$chk5
v5="$NUM5*2=$chkk5"
fi
echo "$v5"
echo "$NUM6"
chk7=$(($NUM7 * 2))
chkk7=$(($chk7-9))
v7="$NUM7*2=$chk7-9=$chkk7"
if [ "$chk7" -lt 9 ]
then
chkk7=$chk7
v9="$NUM7*2=$chkk7"
fi
echo "$v7"
echo "$NUM8"
chk9=$(($NUM9 * 2))
chkk9=$(($chk9-9))
v9="$NUM9*2=$chk9-9=$chkk9"
if [ "$chk9" -lt 9 ]
then
chkk9=$chk9
v9="$NUM9*2=$chkk9"
fi
echo "$v9"
echo "$NUM10"
chk11=$(($NUM11 * 2))
chkk11=$(($chk11-9))
v11="$NUM11*2=$chk11-9=$chkk11"
if [ "$chk11" -lt 9 ]
then
chkk11=$chk11
v11="$NUM11*2=$chkk11"
fi
echo "$v11"
echo "$NUM12"
chk13=$(($NUM13 * 2))
chkk13=$(($chk13-9))
v13="$NUM13*2=$chk1-9=$chkk13"
if [ "$chk13" -lt 9 ]
then
chkk13=$chk13
v13="$NUM13*2=$chkk13"
fi
echo "$v13"
echo "$NUM14"
chk15=$(($NUM15 * 2))
chkk15=$(($chk15-9))
v15="$NUM15*2=$chk15-9=$chkk15"
if [ "$chk15" -lt 9 ]
then
chkk15=$chk15
v1="$NUM15*2=$chkk15"
fi
echo "$v15"
v16=x
echo "$v16=?"
echo -e ""
SUM=$(($chkk1+$NUM2+$chkk3+$NUM4+$chkk5+$NUM6+$chkk7+$NUM8+$chkk9+$NUM10+$chkk11+$NUM12+$chkk13+$NUM14+$chkk15))
echo "$chkk1+$NUM2+$chkk3+$NUM4+$chkk5+$NUM6+$chkk7+$NUM8+$chkk9+$NUM10+$chkk11+$NUM12+$chkk13+$NUM14+$chkk15=$SUM"
R=$(($SUM*9))
echo "$SUM*9=$R"
echo "$R" | awk -F "" '{print $1$2" "">"$3}'
NUMV=$(echo $R | awk -F "" '{print $3}')
v16=$NUMV
echo -e "x=$v16\n"

echo "ORIGINAL: $NUMBER"
echo "NUMERO VERIFICADOR: $NUMV"
echo "NOVO: $NUMBER$NUMV"
export LUHN_ORIGN=$NUMBER
export LUHN_NUMV=$NUMV
export LUHN_NEW=$NUMBER$NUMV
