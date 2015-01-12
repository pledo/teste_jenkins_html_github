#!/bin/bash

function testando_servico()
{
	result=$(/etc/init.d/apache2 status > /dev/null;echo $?)
	#result=`/etc/init.d/apache2 status > /dev/null;echo $?`
	if [ ${result} == 0 ];then
		echo "O resultado do comando e:${result}, servico no ar" 
	elif [ ${result} == 3 ];then
		echo "O resultado do comando e:${result}, servico fora do ar" 
	else	
		echo "Servico com problemas"
	fi
}
testando_servico
