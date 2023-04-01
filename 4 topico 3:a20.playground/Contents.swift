import UIKit

var greeting = "Hello, playground"

//estruturas condicionais: if, else, swifch -aula 20 ==============


// if - Else

 var dorDeCabeça: Bool = false
 var humor: String = ""
 if dorDeCabeça {
    humor = "com raiva"
} else {
   humor = "feliz"
}
 print (" estou", humor)

 let number = 11
 if number % 2 == 0{
     print ("Ele é par")
 } else {
    print ("Ele e impar")
}

 var temperatura = 18
 var clima = ""
if temperatura <= 0 {
  clima = "muito frio"
} else if temperatura < 19 {
  clima = "frio"
} else if temperatura < 21 {
  clima = "clima agradavel"
}else if temperatura < 30 {
  clima = "quente"
}else{
  clima = "muito quente"
}

 let letra = "i"
 var tipoLetra = ""
if letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" {
      tipoLetra = "vogal"
}else {
  tipoLetra = "consoante"
}

// Switch
switch letra {
case "a", "e", "i", "o", "u":
  tipoLetra = "vogal"

default:
  tipoLetra = "consoante"
}

let velocidade = 55.0
switch velocidade {
case 0.0..<20.0:
  print ("primeira marcha")
case 20.0..<40.0:
  print ("segunda marcha")
case 40.0..<55.0:
  print ("terceira marcha")
case 55.0..<80.0:
  print ("quarta marcha")
default:
  print ("quinta marcha")
}

//Closed range e Half-Closed range

//... (closed range)
//..< (half-closed range)

let primeiraLetraDoNome = "k"
switch primeiraLetraDoNome {
case "a"..."f":
 print ("voce esta no primeiro trimestre")
case "g"..."l":
 print ("voce esta no segundo trimestre")
case "m"..."r":
 print ("voce esta no tercdeiro trimestre")
default:
 print ("voce esta no quarto trimestre ")
}







