#!/bin/bash



if [ ! -d "dados" ];
    then
        echo "Criando Diretório"
        mkdir dados

        echo
        echo "Baixando: Dados de teste"
        echo
        wget https://meli-data-challenge.s3.amazonaws.com/2020/test_dataset.jl.gz --directory dados

        echo
        echo "Baixando: Dados de treino"
        echo
        wget https://meli-data-challenge.s3.amazonaws.com/2020/train_dataset.jl.gz --directory dados
        
        echo
        echo "Baixando: Dados adicionais de itens"
        echo
        wget https://meli-data-challenge.s3.amazonaws.com/2020/item_data.jl.gz --directory dados

        echo
        echo "Baixando: Arquivo de submission"
        echo
        wget https://meli-data-challenge.s3.amazonaws.com/2020/sample_submission.csv --directory dados

        echo
        echo "Descompactando arquivos"
        gunzip dados/test_dataset.jl.gz dados/train_dataset.jl.gz dados/item_data.jl.gz
fi