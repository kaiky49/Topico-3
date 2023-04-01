// Estruturas (structs) aula 28 ============================

import Foundation

  // estruturas sao tipos personalizados que eu posso criar e editar tanto criando ele pra faer uma açao ate uma fuçao
let age: Int = 17
let name = "kaiky"

  struct Person {
    var name: String? //botei como opiticional para nao ser obrigado a responder o nome
    var age: Int = 0
    
    
    func sayHello() {
      print("Olá")
    }
}

var person = Person(name: "kaiky" , age: 17)
person.sayHello()
print(person.name!)


//propriedades computadas:

struct Temperature {
  var celsius: Double
  var fahrenheint: Double {
    return celsius * 1.8 + 32
  }
}

var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheint)







