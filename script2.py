#Paulo V. G. Silva
from os import getpid #função necessária para retornar a id do processo do script
from time import sleep #função necessária para o delay

arquivo = open("pid.txt", "w") 
arquivo.write(str(getpid())) #busca o id do processo, converte em string e a escreve no arquivo aberto
arquivo.close() 

for i in range(3):
    print("2: I am alive") #exibe mensagem de que o processo está sendo executado
    sleep(2) #aguarda 2 segundos

print("2: I gonna die now, bye") #exibe mensagem anunciado o final do processo
