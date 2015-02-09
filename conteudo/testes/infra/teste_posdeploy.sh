#!/bin/bash

url="127.0.0.1"
#string_requerida="testando o deploy do html"
string_requerida="It works"
function pos_build()
{
	#result=$(curl -sG 10.200.0.82|egrep -q "testando o deploy do html";echo $?)
	result=$(curl -sG ${url}|egrep "${string_requerida}" > /dev/null;echo $?)
	if [ ${result} == 0 ];then
		echo "Testes passaram"
		return 0
	else	
		echo "Testes falharam"
		return 2
	fi
}
pos_build
