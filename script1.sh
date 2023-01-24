#Paulo V. G. Silva
#!/bin/bash
while :; do #loop infinito
    while IFS= read -r pid || [[ -n "$pid" ]]; do #faz a leitura do arquivo
        if ps -p $pid > /dev/null #verifica se o processo esta ativo no sistema
        then
            echo "1: It is alive" #exibe mensagem de que o processo ja está sendo executado
        else
            echo "1: It is dead" #retorno negativo
            python3 script2.py #executa o script2
        fi
    done < "pid.txt" || {   
        echo "$(date +"%D %T"): $e" >> "cromai.log" #caso ocorra algum erro, é salvo no log
        break #aborta programa
    }
done

    

