extends Node

func _ready() -> void:
	#Irei separar cada aula em funções diferentes para facilitar a visualização
	#Você pode acessar a função pressionando o nome dela com o clique esquerdo do mouse
	#enquanto segura o botão Control (Control + Clique esquerdo do mouse)
	
	aula_1()
	
	
# Conteúdo auxiliar aula 1
# Conteúdo auxiliar aula 1

#Função da aula 1
func aula_1() -> void:
	print("Aula 1")
	print("\n")
	
	#funções são blocos de código que ficam encapsulados dentro de uma estrutura
	#tornando o nosso script muito mais organizado e fácil de ler, utilizamos
	#de funções personalizadas para facilitar a criação de novas funcionalidades
	#visto que, com poucas modificações nós conseguimos utilizar da mesma função
	#para realizar diferentes atividades no nosso código
	
	#existem funções de retorno vazio, e que não recebem argumentos
	#chamamos a função dentro da aula_1, mas criamos a função
	#abaixo
	
	soma()
	
	#existem funções que retornam algo que não seja vazio, e que podem ou não
	#receber argumentos
	
	#Como estamos utilizando a função retorno_soma() como uma variável
	#pelo fato dela estar sendo chamada dentro de um print
	#a godot precisa saber o seu valor de retorno
	
	print(retorno_soma())
	
	#Existem também funções que podem ter retorno ou não, mas que recebem argumentos
	#para facilitar o desenvolvimento/reutilização da função no código
	
	#onde estamos passando dois valores para serem utilizados no calculo, dependendo
	#do tipo de operação
	
	print(resultado_da_operacao(10, 5, "soma"))
	
	print("\n")
	
	
#declaramos a função soma(), que pode ser chamada de qualquer outra função
#do nosso código

#void representa a tipagem estática de retorno vazio
func soma() -> void: 
	
	#conteúdo da função
	print(10 + 10)
	
	
#Não podemos retornar vazio em uma função que está sendo associada a algo como
#uma variável, então precisamos especificar um tipo de retorno, pelo nome da função
#é de se esperar que ela retorne a soma de dois números, ou seja, um valor inteiro

func retorno_soma() -> int:
	return 10 + 10
	
	
#onde a representa o primeiro valor que foi passado na  chamada da função (10)
#b representa o segundo valor que foi passado na chamada da função (5)
#operacao representa o tipo de operadao, que no caso foi "soma"

func resultado_da_operacao(a: int, b: int, operacao: String) -> int:
	#Dependendo da operação, ele irá entrar em um dos casos da estrutura, retornando
	#o valor da operação de a e b, caso entre no estado undefined, não existe
	#tratamento para a operação especificada, logo ele irá retornar 0
	
	match operacao:
		"soma":
			return a + b
			
		"subtracao":
			return a - b
			
		"divisao":
			@warning_ignore("integer_division")
			return a / b
			
		"multiplicacao":
			return a * b
			
		_:
			return 0
