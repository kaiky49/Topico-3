// funções 1 aulo 29 ==============================
//funcoes sao um conjuto auto contido de instruções emcapsuladas dentro de um comando que pode ser executado quantas vezes quizer
//sintaxe de  comando:
/*
func nome da funcao (parametro: tipo)  -> tipoDeRetorno {
 
 codigos e comoandos
 
 
 return tipoDeRetorno
 }
 */

import Darwin

func sayHello() {
  print("Hello")
}
//para execurtar a função:
sayHello()
//

//agora:

func say(message: String) {
  print(message)
}
say (message: "good day")

func say (message:String, to: String) {
  print (message, to)
}

say (message: "good day", to: "Vitoria")


//agora,uma funçao igual,so que retorna a mensagem

func say (mensagem: String, para: String) ->String {
  return mensagem + " " + para
}

say ( mensagem: "Boa noite", para: "Bruno")

//funcao q some 2 numeros

func sum (_ a: Int, b: Int) -> Int {
  return a + b
}
print(sum ( 10, b: 20))

func multiply ( number1: Int, by number2: Int) -> Int {
  return number1 * number2
  
}
 
multiply(number1: 20, by: 10)


// funçao q pegue um numero inicial e some com varios outros

func sum(_ initialValue: Int, withValues values: Int...) -> Int {
  var result = initialValue
  for value in values {
    result += value
  }
  return result
}

print (sum(2,withValues: 7, 9, 9, 10, 23))

// funcáo q returna mais de um tipo:
import Foundation

let studentData = "kaiky kevin: 17"

func getStudentInfo(_ data: String) -> (name: String, age: Int) {
  let info = data.components(separatedBy: ":")
  let studentName = info [0]
  let studentAge = Int (info[1])
  return (studentName, studentAge!)
}

//let student = getStudentInfo(studentData)
//print(student.name)
//print(student.age)

//dps corrijo isso

print (" ")

//Funções 2 aula 30 ====================================

//first class citzen
// siguinifica que ele suporta todos os tipos basicos,ou seja, pode ser passado como argumento de uma funcao,retornado por uma funcao,modificado e atribuido a uma variavel

  func soma(_ a: Int, b: Int) -> Int {
    return a + b
  }

  func subtracao(_ a: Int, b: Int) -> Int {
    return a - b
  }

  func multiplicacao(_ a: Int, b: Int) -> Int {
    return a * b
  }
  
  func divisao(_ a:Int, b: Int) -> Int  {
    return a / b
  }
// para descobrir o tipo de uma funçao tem q pegar a operaçao e deixar somente os tipos dela EX:
// func soma (_ X: Int, Y:Int) -> Int    entao o tipo da funçao é:
// (Int, Int) -> Int

typealias Op = (Int, Int) -> Int
//usei o typealias para poder "ajeitar" o tipo na funçao a baixo
func aplicarOperacao(_ a: Int, _ b: Int, operacao: Op) -> Int {
  return operacao(a, b)
}

let resultado = aplicarOperacao(10,20, operacao: soma) //pode se utilizar qualquer operador a cima :)

// funcáo q retorna como parametro

  func obterOperacao( operacao: String) -> Op {          //ela vai receber umaopraçao
      switch operacao {
    case "soma":
      return soma
    case "subtração":
      return subtracao
    case "multiplicação":
      return multiplicacao
    default:
        return divisao
    }
  }

var operation = obterOperacao(operacao: "subtração")
 operation(30, 15)




