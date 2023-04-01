import UIKit

var greeting = "Hello, playground"

//Operadores logicos 2 aula 19 ===========

//Operador E ou AND (&&)
 
 //comprei essas coisas a baixo,menos a maçã
 var comprarBanana: Bool = true
 var comprarTomate: Bool = true
 var comprarMaçã: Bool = false
 
 //preciso de todos esses igredientes,eu tenho todos eles?
 var todos = comprarBanana && comprarTomate && comprarMaçã
 print(todos)
 //no operador && se tiver pelo menos um  false tudo dara como false
 true && false
 true && true
 false && true
 false && false

//Operador OU (OR): ||

 //voce foi convidado para um churrasco e esses sao seus gostos
 var gostoDeCerveja = false
 var gostoDeCarne = false
 var gostoDePagode = true
 //vc so precisa de pelo menos um gosto para poder ir ao churrasco,entao
 var gostoParaChurrasco = gostoDeCerveja || gostoDeCarne || gostoDePagode
 print (gostoParaChurrasco)
 //no operador OR se pelo menos um der true todos darao true
 
 true || false
 true || true
 false || true
 false || false

// logicos

//calcular merdia

 var grade1 = 8.5
 var grade2 = 7.0
 let result = (grade1+grade2)/2

//operador Unario

//Operador de negação (NOT): !

 var sabeSwift = false
 var precisaDeUmCursoDeSwift = !sabeSwift
//eu preciso de um curso de swifit

//o operador NOT: !, vai sempre negar,ou seja dar a resposta contraria do Dooble, se for false vai ser true e se for true vai ser false

//Operador ternario
//atua sobre tres operantes
var grade  = 7.95
var graderesult = (grade >= 7.0) ? "aprovado" : "reprovado"

let number = 11
let type = (number % 2 == 0 ) ? "par" : "impar"






















