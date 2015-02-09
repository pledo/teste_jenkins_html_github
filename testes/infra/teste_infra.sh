#!/bin/bash

#Descricao: Aqui teremos testes pre build, ou seja
#Queremos saber se os recursos e servicos que preisamos
#estao de pe, cada sevico e recurso deve ter sua funcao
#parametrizada

function testando_servico()
{
#ToDo:
# Parametrizar o  seviço e a porta para
# Generalizar a funcao
# Escrever em Python para podermos construir as funcoes
#decentemente

	result=$(/usr/sbin/service apache2 status > /dev/null;echo $?)
	if [ ${result} == 0 ];then
		echo "O resultado do comando e:${result}, servico no ar" 
	  return 0
  elif [ ${result} == 3 ];then
		echo "O resultado do comando e:${result}, servico fora do ar" 
	  return 2
  else	
		echo "Servico com problemas"
	  return 1
	fi
}
testando_servico
