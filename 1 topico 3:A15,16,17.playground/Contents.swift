//comentario e Variáveis aula 15 =================

//variavel
 //pode ser alterada
var age = 39

print (age)
//constantes
 //informaçao q n pode ser mudada
let pi = 3.1415926

//Tipos aula 16

//Int, Float, Double, Character, String, Bool

//Booleanos Boll
var likesFruits = true

//Inteiro Int

var temperature = -12

//double (numeros decimais)

let crazyNumber = 21.343

//character
 //1 caracter
var gender: Character = "m"


//String
 //e um conjunto de caracteres

 var newGender = "m"
 let studentName = "Kaiky"
 //concatenação

let fistName = "kaiky"
let lastName = "kevin"

let fullname = "\(fistName) \(lastName)  tem \(age) anos "
print(fullname)

//Optionals aula 17 ==================

var rg: Int = 3243553
var driverLincense: Int?
driverLincense = 3455445

if let driverL = driverLincense {
  print("a minha carteira de motorista e:",driverL)
}else{
  print("nao possuo carteira de motorista")
}




 
