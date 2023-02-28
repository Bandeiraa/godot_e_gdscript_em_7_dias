extends Node

#Variável global com a vida do personagem
var vida: int = 10

func _ready() -> void:
	### RESPOSTA QUESTÃO 1 ###
	
	print("Resposta questão 1")
	
	aplicar_dano(15)
	
	print("\n")
	
	### RESPOSTA QUESTÃO 1 ###
	
	### RESPOSTA QUESTÃO 2 ###
	
	print("Resposta questão 2")
	
	aplicar_dano_ao_inimigo(15, 5, 5)
	
	print("\n")
	
	### RESPOSTA QUESTÃO 2 ###
	
	### RESPOSTA QUESTÃO 3 ###
	
	print("Resposta questão 3")
	
	curar_personagem("Mel")
	
	print("\n")
	
	### RESPOSTA QUESTÃO 3 ###
	
	### RESPOSTA QUESTÃO 4 ###
	
	print("Resposta questão 4")
	
	#Como precisamos passar as informações em formato de lista, estamos
	#passando todos os valores separados por vírgula, os valores que estão
	#sendo passados são: nome, nivel, ataque, defesa e velocidade, respectivamente
	
	listar_informacoes_personagem(
		[
			"Guerreiro",           #Nome
			15,                    #Nível
			45,                    #Ataque
			55,                    #Defesa
			25                     #Velocidade
		]
	)
	
	listar_informacoes_personagem(
		[
			"Mago",                #Nome
			15,                    #Nível
			25,                    #Ataque
			75,                    #Defesa
			20                     #Velocidade
		]
	)
	
	listar_informacoes_personagem(
		[
			"Arqueiro",            #Nome
			15,                    #Nível
			65,                    #Ataque
			25,                    #Defesa
			35                     #Velocidade
		]
	)
	
	print("\n")
	
	### RESPOSTA QUESTÃO 4 ###
	
	
	
#Baseado no dano que nós estamos recebendo como parâmetro, se o dano for maior que a vida
#iremos matar o personagem, caso contrário ele fica vivo e printa a mensagem
#do else

func aplicar_dano(dano: int) -> void:
	if dano >= vida:
		print("Personagem não sobreviveu ao ataque")
		
	else:
		print("Personagem sobreviveu ao ataque")
		
		
#Baseado na vida atual do inimigo, se o nosso dano + dano bonus não for maior que a 
#sua vida, ele irá sobreviver, retornando que o ataque é menor que a vida do inimigo
#caso ele seja derrotado, irá retornar que o ataque é maior que a vida do inimigo

func aplicar_dano_ao_inimigo(vida_atual: int, dano: int, dano_bonus: int) -> void:
	if vida_atual > dano + dano_bonus:
		print("Ataque menor que a vida do inimigo")
		
	else:
		print("Ataque maior que a vida do inimigo")
		
		
func curar_personagem(item_de_cura: String) -> void:
	var valor_da_cura: int = 0
	var item: String = item_de_cura
	
	#Baseado no item de cura, nós vamos atribuir um valor de cura especificado
	#em cada caso
	
	match item_de_cura:
		"Poção de vida":
			valor_da_cura = 100
			
		"Maçã":
			valor_da_cura = 5
			
		"Mel":
			valor_da_cura = 25
			
		"Batata":
			valor_da_cura = 8
			
		#Caso o item de cura não exista no banco de dados ou seja inválido
		#então nós iremos considerar que o item atual é vazio
		_:
			item = ""
			
	#Se o item atual for diferente de vazio, então ele irá exibir a mensagem do valor
	#de cura, caso contrário ele não irá retornar nenhum valor
	
	if item != "": 
		print("O item utilizado foi " + item_de_cura + " , a quantidade de vida curada foi de " + str(valor_da_cura) + " pontos...")
		
		
#Dentro da função, estamos recebendo a lista como parâmetro, onde os valores desta
#lista estão sendo utilizados para popular as mensagens de print, para que seja possível
#exibir na output/console, as informações de cada personagem criado

func listar_informacoes_personagem(lista: Array) -> void:
	print("Classe: " + lista[0])
	print("Nível: " + str(lista[1]))
	print("Ataque: " + str(lista[2]))
	print("Defesa: " + str(lista[3]))
	print("Velocidade: " + str(lista[4]))
	
	print("\n")
