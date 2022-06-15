#!/bin/bash
arquivo=0
while [ "$resposta" != "q" ];do
        echo -e "O que deve ser feito? \n[r] escolher um arquivo para ser processado. \n[a] Remover todas as letras do arquivo. \n[b] Remover todos o>
        read -p ":" resposta
        if [ "$resposta" = "r" ];then
                echo digite o nome do arquivo para ser processado.
                read -p ":" arquivo
        elif [ "$resposta" = "a" ];then
                if [ "$arquivo" = "0" ];then
                        echo 'Escolha um arquivo para ser processado antes!'
                else sed -i 's/[a-z]//g' $arquivo
                fi
        elif [ "$resposta" = "b" ];then
                if [ "$arquivo" = "0" ];then
                        echo 'Escolha algum arquivo para ser processado antes!'
                else sed -i 's/[0-9]//g' $arquivo
                fi
        elif [ "$resposta" = "c" ];then
                if [ "$arquivo" = "0" ];then
                        echo 'Escolha algum arquivo para ser processado antes.'
                else sed -i 's/[^a-zA-Z0-9]/$/g' $arquivo
                fi
        fi
done
