extends Node

func _ready() -> void:
	#Irei separar cada aula em funções diferentes para facilitar a visualização
	#Você pode acessar a função pressionando o nome dela com o clique esquerdo do mouse
	#enquanto segura o botão Control (Control + Clique esquerdo do mouse)
	
	aula_1()
	aula_2()
	aula_3()
	aula_4()
	aula_5()
	aula_6()
	aula_7()
	
	
# Conteúdo auxiliar aula 1

#Variáveis servem para armazenar valores que posteriormente podem ser acessados
#de dentro do seu código (dependendo da sua declaração)
#muito úteis para auxiliar a criação de projetos
var ola_mundo = "Olá, mundo!"
var contador = 0

# Conteúdo auxiliar aula 1

#Função da aula 1
func aula_1() -> void:
	print("Aula 1")
	print("\n")
	
	#Irá exibir a mensagem armazenada na variável ola_mundo
	print(ola_mundo)
	
	#Irá exibir o valor armazenado na variável contador
	print(contador)
	
	#Estamos acrescentando o valor do contador em 1
	contador += 1 
	print(contador)
	
	#Estamos descresendo o valor do contador em 1
	contador -= 1
	print(contador)
	print("\n")
	
	
# Conteúdo auxiliar aula 2

#Variável do tipo String, onde nós inferimos o seu tipo antes de declarar
#o seu valor (Tipagem estática). Conceito muito utilizado na programação
#em geral, tornando o código mais performático (Rápido) e limpo.
var saudacao: String = "Olá aventureiro, em que posso lhe ajudar?"

# Conteúdo auxiliar aula 2

#Função da aula 2
func aula_2() -> void:
	print("Aula 2")
	print("\n")
	
	print(saudacao)
	
	print("\n")
	
	
# Conteúdo auxiliar aula 3

var frase_aula_3: String = "Esta é a frase da aula 3!"

# Conteúdo auxiliar aula 3

#Função da aula 3
func aula_3() -> void:
	print("Aula 3")
	print("\n")
	
	#Métodos existem em diversos objetos da Godot no geral, eles podem ser utilizados
	#a partir da referência ao objeto, seguido de um . + nome do método
	#eles servem para facilitar a criação/modificação de diversos
	#componentes da engine no geral
	
	#Alguns métodos de String, que modificam o texto
	print(frase_aula_3.to_camel_case())
	print(frase_aula_3.to_lower())
	print(frase_aula_3.to_upper())
	print(frase_aula_3.to_pascal_case())
	print(frase_aula_3.to_snake_case())
	print(frase_aula_3.capitalize())
	
	print("\n")
	
	
# Conteúdo auxiliar aula 4

#Variáveis do tipo export podem e devem ser utilizada para facilitar o desenvolvimento
#no geral, visto que o seu valor pode ser modificado de fora do código, sem a necessidade
#de ficar procurando no código, onde você declarou determinada variável
@export var texto_aula_4: String = "Esta mensagem pode ser editada diretamente da interface do objeto, no menu inspecionar"

# Conteúdo auxiliar aula 4

#Função da aula 4
func aula_4() -> void:
	print("Aula 4")
	print("\n")
	
	print(texto_aula_4)
	
	print("\n")
	
	
# Conteúdo auxiliar aula 5

var nome: String = "Davi"

# Conteúdo auxiliar aula 5

#Função da aula 5
func aula_5() -> void:
	print("Aula 5")
	print("\n")
	
	#Concatenação de Strings, muito utilizado para a formatação de texto
	#Podemos utilizar em conjunto com variáveis de diversos tipos para
	#"Somar" textos
	print("Olá, meu nome é " + nome)
	
	#Vocês já devem ter percebido pela output, mas o "\n" é um " break line "
	#Ou seja, ele pula uma linha no console
	print("\n")
	
	
# Conteúdo auxiliar aula 6

#Números inteiros são todos os números positivos e negativos que representam um número
#fechado, ex: 10, 20, 30, 300, -300, -10, 2, 5
var numero_inteiro: int = 10

#Números float são todos os números positivos e negativos que representam um número
#quebrado, ex: 10.5, 123.2900, -50.03, -1.01
var numero_quebrado: float = 0.5

# Conteúdo auxiliar aula 6

#Função da aula 6
func aula_6() -> void:
	print("Aula 6")
	print("\n")
	
	#Conseguimos exibir números junto de textos no console, por meio da concatenação
	#caso o valor (inteiro/float) seja convertido para texto (String), por meio do
	#método str(), onde dentro dos parenteses, é especificado o valor
	#a ser convertido
	
	print("Número inteiro: " + str(numero_inteiro))
	print("Número quebrado: " + str(numero_quebrado))
	
	print("\n")
	
	
# Conteúdo auxiliar aula 7

#variáveis do tipo booleano são representados por verdadeiro ou falso
#utilizadas em conjunto com estruturas condicionais, para limitar
#ações do código

var eh_verdadeiro: bool = true
var eh_falso: bool = false

# Conteúdo auxiliar aula 7

#Função da aula 7
func aula_7() -> void:
	print("Aula 7")
	print("\n")
	
	#Operadores de comparação 
	# < (menor que) <= (menor igual que)
	# > (maior que) >= (maior igual que)
	# == (igual)
	
	#podem ser utilizados para diversos tipos de comparação por código
	#onde sempre vão retornar o valor da comparação como um booleano
	#(verdadeiro ou falso)
	
	print(10 > 11)   #Falso, 10 não é maior que 11
	print(10 >= 10)  #Verdadeiro, 10 é igual a 10
	print(10 <= 9)   #Falso, 10 é maior que 9
	print(10 == 10)  #Verdadeiro, 10 é igual a 10
	
	print("\n")
