//Controle de fluxo: While e For In aula 26 =====================

//FOR IN

//quero ciar um calendario do mes,usando um Loop

print (" Estou no dia 1 de Setembro ")
//ou

for dia in 1...30 {
  print("Estou no dia \(dia) de Setembro")
}
//quero repetir uma frase 5 vezes
for _ in 1...5 {
  print ("kaiky e foda")
}

//vamos utilizar um Loop em um Arrays

//esses sao os alunos que vieram hoje
let estudantes = [
"João Paulo",
"Enzo Gabriel",
"Valentina Santos",
"Matheus Silva",
"Bianca Lois"
]

//quero fazer uma lista de todos que vieram hoje

for Estudante in estudantes {
  print ("O aluno \(Estudante) veio a aula hoje!")
}

//quero imprimir todas as letras do meu nome

let name = "Kaiky"

for letter in name {
  print (letter)
}

//While

var life = 10
while life > 0 {
  print ("O jogador está com \(life) vidas")
  life = life - 1
}
    
import Foundation
import Security
print ("")
//fazer um comando pra numeros aleatorios da MegaSena

var megaSena: [Int] = []
while megaSena.count < 6 {
  let number = Int(arc4random_uniform(61))
  if !megaSena.contains(number) {
    megaSena.append(number)
  
    
  }
}
print(megaSena)

//quantas vezes eu jogo o dado ate dar o numro 6

var tentativas = 0
var diceNumber = 0
repeat {
  tentativas += 1
  diceNumber = Int(arc4random_uniform(7))
}while diceNumber != 6
        print ("Voce tirou 6 com \(tentativas) tentativas")


//quero criar um laço que pare quando achar um numero errado
//no caso quero criar um laço de numeros q vai de 1 ate 10,se eu achar um numero q nao esteja entre esses numeros ele para
let grades = [10.0,9.0,5.0,3.0,-4.0,9.0,10.0,5.0]
for grade in grades{
print(grade)
  if grade < 0.0 || grade > 10.0 {
    print("Nota invalida")
    break //o braek e o comando para parar o laço assim fazendo ele n continuar
  }
}


print ("")

//Enumeradores: Enum aula 27 =======================
  // enumeradores sao um conjunto limitado fechado de opçoes q determinam uma resposta

//quero definir o rumo q um usuario esta indo por uma bussóla

enum bussola {
  case norte
  case leste
  case oeste
  case sul
}

var direcao = bussola.norte

var direcao2 = bussola.norte

print ("voce esta indo para o \(direcao)")



print(""
)
//um passageiro quer sentar em um lugar do aviao,vamos ver onde esta disponivel e colocar ele em um desses lugares

enum posicao: String {
  case aisle = "corredor", middle = "meio", window = "janela"
  
}

var posicaoPassageiro = posicao.window
switch posicaoPassageiro {
case .aisle:
    print("O passageiro esta sentado no corredor")
case .window:
    print("O passageiro esta sentado na janela")
case .middle:
    print("O passageiro esta sentado no meio")
}

print(posicaoPassageiro)

enum meses: Int{
  case janeiro = 1
  case fevereiro
  case março
  case abril
  case maio
  case junho
  case julho
  case agosto
  case setembro
  case novembro
  case dezembro
}
  //como eu botei o janeiro como =1 automaticamente o xcode numera o resto da lista
  //quero descobrir no numero de agosto
print(meses.agosto.rawValue)



//balança

enum Measure {
  case weight(Double)
  case age(Int)
  case size(width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height: 1.71)
switch measure{
case .weight(let weight):
  print("o seu peso é \(weight)")
case .age(let age):
print ("a sua idade é: \(age)")
case .size (let size):
print ("as suas medidao de tamanho sao \(size.width)m de largura e \(size.height)m de altura")
}












  














        






