extends Node

func _ready() -> void:
	### RESPOSTA QUESTÃO 1 ###
	
	print("Resposta questão 1")
	
	#declaramos duas constantes com valores inteiros, em seguida, criamos uma
	#variável para somar essas constantes, visto que nós não podemos
	#modificar o valor da uma constante depois de sua declaração
	
	const NUMERO_1: int = 10
	const NUMERO_2: int = 20
	
	var soma: int = NUMERO_1 + NUMERO_2
	
	print("A soma das duas constantes é: " + str(soma))
	
	print("\n")
	
	### RESPOSTA QUESTÃO 1 ###
	
	### RESPOSTA QUESTÃO 2 ###
	
	print("Resposta questão 2")
	
	#a partir da altura e do peso, é possível realizar o cálculo do imc pela fórmula
	#em seguida, a partir dos valores disponibilizados, nós estamos criando " ranges "
	#de condição para as diversas clasificações que o valor de IMC tem
	
	var altura: float = 1.72
	var peso: int = 65
	
	var imc: float = peso / (altura * altura)
	
	#... menor que 18.5 = magreza
	
	if imc < 18.5:
		print("MAGREZA")
		
	#maior ou igual a 18.5, e menor ou igual a 24.9, ou seja, entre o range de
	#18.5 a 24.9 = normal
	
	elif imc >= 18.5 and imc <= 24.9:
		print("NORMAL")
		
	elif imc >= 25.0 and imc <= 29.9:
		print("SOBREPESO")
		
	elif imc >= 30.0 and imc <= 39.9:
		print("OBESIDADE GRAU II")
		
	elif imc >= 40.0:
		print("OBESIDADE GRAU III")
	
	print("\n")
	
	### RESPOSTA QUESTÃO 2 ###
	
	### RESPOSTA QUESTÃO 3 ###
	
	print("Resposta questão 3")
	
	#Baseado no nome da habilidade, se essa habilidade existir dentro da estrutura
	#match, então ele irá exibir a descrição da skill que foi passada, caso
	#a habilidade não exista na estrutura, ele irá rodar o caso
	#undefined, representado pelo " _ " 
	
	var nome_da_habilidade: String = "Concentração"
	
	match nome_da_habilidade:
		"Rajada de Flechas":
			print("Atira duas flechas no alvo, com um poder de 500% do ataque")
			
		"Chuva de Flechas":
			print("Atira várias flechas em uma área de 9x9, com um poder de 200% do ataque")
			
		"Tempestade de Flechas":
			print("Atira várias flechas em uma área de 11x11, com um poder de 2000% do ataque")
			
		_:
			print("Habilidade não definida")
			
	print("\n")
	
	### RESPOSTA QUESTÃO 3 ###
	
	### RESPOSTA QUESTÃO 4 ###
	
	print("Resposta questão 4")
	
	var ficha_classe_guerreiro: Array = [
		"Guerreiro",
		10,
		35,
		30,
		20
	]
	
	#Para acessar os valores da lista, nós podemos especificar o indice dos valores
	#onde o indice 0 irá acessar "Guerreiro", indice 1 irá acessar o 10 ...
	#indice 4 irá acessar a velocidade (20)
	
	print("A classe do personagem é " + ficha_classe_guerreiro[0])
	print("O nível do personagem é " + str(ficha_classe_guerreiro[1]))
	print(str(ficha_classe_guerreiro[2]) + " de ataque total")
	print(str(ficha_classe_guerreiro[3]) + " de defesa total")
	print(str(ficha_classe_guerreiro[4]) + " de velocidade")
	
	print("\n")
	
	### RESPOSTA QUESTÃO 4 ###
	
	### RESPOSTA QUESTÃO 5 ###
	
	print("Resposta questão 5")
	
	#Estamos iterando para cada elemento da lista ficha classe guerreiro, utilizando
	#do " in " em uma lista, sem especificar algo (como o tamanho), a Godot
	#automaticamente irá iterar pelos elementos da lista
	
	for informacao in ficha_classe_guerreiro:
		print(informacao)
	
	print("\n")
	
	### RESPOSTA QUESTÃO 5 ###
	
	### RESPOSTA QUESTÃO 6 ###
	
	print("Resposta questão 6")
	
	for informacao in ficha_classe_guerreiro:
		
		#Convertemos a informacao para inteiro (pois existe texto na estrutura)
		#caso a conversão seja diferente de 0 (toda string que não consegue ser convertida
		#para inteiro retorna 0), e o valor seja igual ao valor do ataque (definido na ficha_classe_guerreiro)
		#então nós utilizamos do comando break para sair da estrutura de repetição
		#pois chegamos na iteração que queriamos
		
		if int(informacao) != 0 and informacao == 35:
			print("Iteramos até encontrar o ataque total do personagem... saindo da estrutura")
			break
			
		print(informacao)
		
	print("\n")
	
	### RESPOSTA QUESTÃO 6 ###
