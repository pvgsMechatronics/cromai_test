#Paulo V. G. Silva
#!/bin/bash
while :; do #loop infinito
    while IFS= read -r pid || [[ -n "$pid" ]]; do #faz a leitura do arquivo
        if ps -p $pid > /dev/null #verifica se o processo esta ativo no sistema
        then
            clear #quando o script2 ja estiver em execução, clear evita que o terminal fique sendo spamado
            echo "1: It is alive" #exibe mensagem de que o processo ja está sendo executado
        else
            echo "1: It is dead" #retorno negativo
            python3 script2.py #executa o script2
        fi
    done < "pid.txt" || {   
        echo "$(date +"%D %T"): Um erro impediu a execução do script. Provavelmente esta faltando o arquivo pid.txt ou script2.py." >> "cromai.log" #caso ocorra algum erro, é salvo no log
        break #aborta programa
    }
done


    

