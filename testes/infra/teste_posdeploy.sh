#!/bin/bash

function pos_build()
{
	result=$(curl -sG 10.200.0.82|egrep -q "testando o deploy do html";echo $?)
	if [ ${result} == 0 ];then
		echo "Testes passaram"
		return 0
	else	
		echo "Testes falharam"
		return 2
	fi
}
pos_build
