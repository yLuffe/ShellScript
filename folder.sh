#!/bin/bash
printText()
{
clear
echo "========================================="
echo "|                                       |"
echo "|          CRIADOR DE ARQUIVOS          |"
echo "|                EM LOTE                |"
echo "|                                       |"
echo "| by: Luiz Kuhn                    v1.0 |"
echo "========================================="
}

options()
{
clear
echo "========================================="
echo "|                                       |"
echo "|   DESEJA CRIAR QUAL TIPO DE ARQUIVO   |"
echo "|                                       |"
echo "========================================="
echo "|                                       |"
echo "| 1 - Pasta                             |"
echo "| 2 - Texto                             |"
echo "| 3 - Shell Script                      |"
echo "| 4 - PDF                               |"
echo "========================================="
}

printText # Função
# Solicita número ao usuário
while ! [[ "$NUMBER" =~ ^[1-99]+$ ]]
do
    read -p "Digite a quantidade (Max: 99): " NUMBER
done

printText
# Solicita o nome do arquivo
while ! [[ "$CONFIRM" =~ ^[yY]$ ]]
do
    read -p "Digite o nome: " NAME
    read -p "Deseja confirmar o nome $NAME? (Y/n): " CONFIRM
done

# Mostra opções disponíveis
while ! [[ "$OPTION" =~ ^[1-4]+$ ]]
do
    options # Função
    read -p "Escolha uma opção: " OPTION
done

# Pasta
if [ "$OPTION" == "1" ]; then
    for i in $(seq 1 "$NUMBER"); do
        FOLDER_NAME="$NAME""$i"
        mkdir $FOLDER_NAME
        echo "Criada a pasta: $FOLDER_NAME"
    done
fi

# Texto
if [ "$OPTION" == "2" ]; then
    for i in $(seq 1 "$NUMBER"); do
        FILE_NAME="$NAME""$i"
        touch "$FILE_NAME.txt"
        echo "Criado o arquivo: $FILE_NAME"
    done
fi

# Shell Script
if [ "$OPTION" == "3" ]; then
    for i in $(seq 1 "$NUMBER"); do
        FILE_NAME="$NAME""$i"
        touch "$FILE_NAME.sh"
        echo "Criado o arquivo: $FILE_NAME"
    done
fi

# PDF
if [ "$OPTION" == "4" ]; then
    for i in $(seq 1 "$NUMBER"); do
        FILE_NAME="$NAME""$i"
        touch "$FILE_NAME.pdf"
        echo "Criado o arquivo: $FILE_NAME"
    done
fi