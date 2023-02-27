#Herda de Node (Tipo do objeto)
extends Node

#Função executada assim que o objeto ficar pronto, para rodar a cena, vá até o
#caminho dela -> aprenda_gdscript -> dia_1 -> conceito -> dia_1.tscn (clique duplo para abrir)
#Em seguida, pressione F6 para rodar a cena que foi aberta.
func _ready() -> void:
	
	#Mensagem que irá aparecer no contole (output), encontrado no canto inferior
	#esquerdo
	
	print("Olá, mundo!")
