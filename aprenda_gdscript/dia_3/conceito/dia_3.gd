extends Node

func _ready() -> void:
	#Irei separar cada aula em funções diferentes para facilitar a visualização
	#Você pode acessar a função pressionando o nome dela com o clique esquerdo do mouse
	#enquanto segura o botão Control (Control + Clique esquerdo do mouse)
	
	aula_1()
	aula_2()
	aula_3()
	aula_5()
	aula_6()
	
	
# Conteúdo auxiliar aula 1

#Constantes são tipos de variáveis que possuem o seu valor imutável
#Nós não podemos modificar o valor de uma constante depois de ter declarado ela

#Por padrão, nós declaramos constantes com todas as letras maiúsculas, separando
#o seu nome utilizando um " _ ", caso mais de uma palavra seja utilizada para
#representar a constante -> RESET_DISPLAY_NUMBER
const RESET: int = 0

#ex - O seguinte código daria um erro, pois estariamos tentando atualizar o valor
#de uma constante

#RESET = 10

# Conteúdo auxiliar aula 1

#Função da aula 1
func aula_1() -> void:
	print("Aula 1")
	print("\n")
	
	print("Valor de reset: " + str(RESET))
	
	print("\n")
	
	
# Conteúdo auxiliar aula 2

var numero_atual: int = 10
var input: int = 15

# Conteúdo auxiliar aula 2

#Função da aula 2
func aula_2() -> void:
	print("Aula 2")
	print("\n")
	
	#Estruturas condicionais são representadas pelo if | elif | else
	#Onde por meio de condições especificadas no corpo da estrutura, nós podemos
	#limitar o nosso código a executar determinados comandos, por exemplo
	
	#Se o número atual for menor que a input, então a condição do if vai ser verdadeira
	#logo ele vai entrar apenas na linha do if
	
	#Caso a primeira condição seja falsa, nós podemos criar condições para as próximas
	#possíveis situações, no caso, se o número atual for igual a input, então ele entraria
	#no corpo do elif
	
	#Caso nenhuma condição seja respeitada, só resta a ele entrar no caso do else
	#onde nós não especificamos uma condição, geralmente o else é o caso contrário
	#da condição que nós estamos verificando dentro do if
	
	#Então se o if/elif for falso, ele sempre entrará/assumirá que o else é " verdadeiro "
	#entrando dentro do seu escopo
	
	#Para testar as condições, mude o valor de número atual nas variáveis declaradas
	#acima da função aula_2, para que o número atual seja menor, igual ou maior que a input
	
	if numero_atual < input:
		print("Número atual é menor que a input")
		
	elif numero_atual == input:
		print("Número atual é igual a input")
		
	else:
		print("Número atual é maior que a input")
		
	print("\n")
	
	
# Conteúdo auxiliar aula 3

var classe_atual: String = "Barbaro"

# Conteúdo auxiliar aula 3

#Função da aula 3
func aula_3() -> void:
	print("Aula 3")
	print("\n")
	
	#Outro tipo de estrutura condicional, que nós podemos e vamos utilizar, é o
	#match, sua definição se da pelo match, seguido do valor que pode variar.
	#É uma estrutura mais limitada do que o if/elif/else, pois nós não podemos
	#especificar um alcance na sua estrutura igual é possível em um if
	
	#ex: if numero > 10 and numero < 20: se o número estiver entre 11 e 19, ele entrará
	#nessa estrutura
	
	#Mas é uma estrutura que torna o código muito mais organizado, por separar
	#as condições em blocos
	
	#Um exemplo de estrutura, que irá entrar em cada bloco de código, dependendo
	#da classe do personagem
	
	#Para testar a estrutura, modifique a variável classe_atual, declarada acima
	#da função da aula_3
	
	#Para testar o caso indefinido, especifique um nome/classe que não está na estrutura
	
	#Para adicionar um novo caso, apenas liste dentro da estrutura a nova classe que
	#deseja inserir
	
	match classe_atual:
		"Guerreiro":
			print("O guerreiro utiliza espada e escudo")
			
		"Mago":
			print("O mago utiliza um livro de feitiços e um cajado")
			
		"Arqueiro":
			print("O arqueiro utiliza uma aljava de flechas e um arco")
			
		#Também existe o caso indefinido, que funciona como se fosse um else
		#sempre que ele não encontrar um caso definido pelo valor que pode variar
		#ex: se for especificada uma classe que não existe, ele entrará no caso
		#indefinido, que é representado pelo " _ "
		
		_:
			print("Classe não encontrada no banco de dados")
	
	print("\n")
	
	
# Conteúdo auxiliar aula 5

#Uma lista, como o nome já diz, é uma variável que armazena uma lista de valores
#não necessariamente uma lista precisa armazenar valores do mesmo tipo, abaixo
#segue uma lista de numeros, contendo valores de 0 até 5

#os elementos de uma lista são separados pelo uso de virgula

var lista_de_numeros: Array = [0, 1, 2, 3, 4, 5]

#Nós podemos criar listas especificando diversas informações do nosso jogo, para
#facilitar o acesso aos determinados dados de algo, segue uma lista contendo as
#informações de um personagem

var barbaro: Array = [
	"Bárbaro", #nome da classe
	5,           #nível atual
	"Machado",     #arma
	15               #ataque total
]

# Conteúdo auxiliar aula 5

#Função da aula 5
func aula_5() -> void:
	print("Aula 5")
	print("\n")
	
	#Para acessar os valores de uma lista, nós precisamos especificar o indice
	#que nós queremos acessar
	
	#A quantidade de indices de uma lista vai depender da quantidade de valores
	#que ela possui, uma lista de tamanho 4, tem indices que variam de 0 até 3
	#onde 0 representa o primeiro valor da lista e 3 representa o último
	
	#O primeiro indice de uma lista sempre vai ter o valor 0, o último sempre vai
	#ter o valor do tamanho da lista - 1
	
	#Tentar acessar um indice que não existe em uma lista irá resultar em um erro
	#na hora de testar/rodar o projeto
	
	#Exemplo de uso da lista barbaro
	
	print("INFORMAÇÕES DO PERSONAGEM")
	
	print("Classe: " + barbaro[0])
	print("Nível: " + str(barbaro[1]))
	print("Arma: " + barbaro[2])
	print("Ataque total: " + str(barbaro[3]))
	
	print("INFORMAÇÕES DO PERSONAGEM")
	
	print("\n")
	
	
# Conteúdo auxiliar aula 6

var numeros: Array = [0, 1, 2, 3, 4, 5]

# Conteúdo auxiliar aula 6

#Função da aula 6
func aula_6() -> void:
	print("Aula 6")
	print("\n")
	
	#for é uma estrutura de repetição que pode ser iterada de várias formas
	#a forma mais comum é iterar por um número em especifico, ex
	
	#Apagar a # da linha de print para ver o resultado da operação
	
	for i in 10:
		#onde i vai variar de 0 até 9
		
		#print(i)
		pass
		
	#nós também podemos iterar pelos elementos de uma lista
	
	for n in numeros:
		#onde n vai variar entre os valores da lista de números definidos
		#acima da função aula_6
		
		#print(n)
		pass
		
	#nós também podemos iterar pelo tamanho de uma lista
	#onde .size() é um método de lista que retorna o tamanho da lista
	#como um valor inteiro
	
	for i in numeros.size():
		#numeros[i] vai printar cada um dos elementos da lista, já que nós estamos
		#iterando por cada indice da lista
		
		#print(numeros[i])
		pass
		
	#outra forma de utilizar o for é especificando um alcance
	#neste exemplo estamos iterando do range de 10 até 19, ele sempre irá
	#iterar do primeiro valor do range até o último - 1
	
	for i in range(10, 20):
		#print(i)
		pass
		
	#podemos iterar em ordem decrescente espeficando o alcance ao contrário,
	#seguido do step de -1
	
	#Neste caso ele irá iterar de 20 até 11, caso queira que ele não inclua o 20
	#pode passar 20 -1, 10 - 1, para ele iterar de 19 a 10
	
	for i in range(20, 10, -1):
		#print(i)
		pass
		
	#o step pode servir para pular determinados indices de uma estrutura for
	#caso especificado, ele vai iterar baseado no step, ex
	
	for i in range(10, 100, 20):
		#onde o valor de i vai variar e ser iterado apenas a cada 20, neste exemplo
		#10, 30, 50, 70, 90
		
		#print(i)
		pass
		
	#além disso, é possível ignorar determinadas iterações de um for por meio do
	#comando continue, que irá ignorar a iteração atual, passando para a próxima
	
	for i in 10:
		if i == 5:
			continue
			
		#Caso i seja igual a 5, ele irá ignorar essa iteração
		#printando de 0 a 4, 6 a 9
		#print(i)
		
	#outro comando que nós podemos utilizar é o break, ele serve para quebrar
	#a estrutura de repetição, caso tenhamos uma lista de 1000 palavras,
	#mas a partir do momento que ele encontra uma palavra em específico
	#a estrutura não tenha mais utilidade para nós, podemos usar o
	#break para sair imediatamente da estrutura
	
	for i in 1000:
		#irá iterar de 0 até 10, quando chegar em 10 irá sair da lista
		#já que a condição foi respeitada, e nós não temos a necessidade
		#de iterar para os 1000 valores da lista
		
		#print(i)
		
		if i == 10:
			break
			
	print("\n")
