//closures aula  31 ===========================
//closure e um pedaço auto contido de códigos e funcionalidade que podem ser repassados e utilizados em seu codigo

    func soma(_ a: Int,_ b: Int) -> Int {
      return a + b
    }

    func subtracao(_ a: Int,_ b: Int) -> Int {
      return a - b
    }

    func calcule(_ a: Int,_ b: Int, operacao: (Int, Int) -> Int) -> Int {
      return operacao(a, b)
    }

    calcule( 10, 20, operacao: soma)


//inferencia de titulos

    //vamos diminuindo ate o maximo
    calcule( 10, 20, operacao: {( a: Int, b: Int) -> Int in
      return a * b
    })

    calcule( 10, 20, operacao: {(a , b ) -> Int in
      return a * b
    })

    calcule( 10, 20, operacao: {(a , b ) in
      return a * b
    })

    calcule( 10, 20, operacao: {
      return $0 * $1
    })

    calcule( 10,  20, operacao: {$0 * $1})

    calcule ( 10,  20, operacao: *)

//metodos que a array tem,e usam closures
//MAP:mapeia uma coleção e devolve a coleção mapeada

    import Foundation
    var names = [

     "    Alessandra  ",
     "   Jessica   ",
     "   Anderson      ",
     "Demys    ",
     "Harley     "
  ]
  //$0 = cada um desses elementos (nomes) a cima
    //irei mapear e corrigir esses nomes
    let correctedNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})  //$0: representa todos os nomes a cima 
    print(correctedNames)

    //quero deixa todos esses nomes em maiusculo

    let uppercasedNames = correctedNames.map({$0.uppercased()})
    print(uppercasedNames)
    //quero adicionar um sobre nome igual para todos
    let lopes = correctedNames.map({$0 + " Lopes"})
    print(lopes)

//Filtros:servem para filtrar uma coleção
    //quero filtrar os nomes que possuem mais de 6 letras

let newNames = correctedNames.filter({$0.count <= 6}) // ou: < 7
print(newNames)

//reduce
      //reduce junta todos os itens escolhidos e comprime eles e junta em um grande item
      //quero juntar todas as letras de todos os nomes e ver quanto vai dar
let sumLetters = correctedNames.reduce(0, {$0 + $1.count})
print(sumLetters)


print ("           ")

//tratamentos de erros aula 32 =============================
// quando algo no codigo der errado ou nao saiba interpretar o erro,voce tem q fazer o seu usuario saber oq causou esse erro e como fazer ele tratar esse error
  //vou fazer uma função q checa um usuario e senha e retorna se deu certo ou nao
  print("faça seu login")
  print ("     ")

 enum LoginError: Error {
  case wrongLogin
  case wrongPassword
  case noInternetConnection
 }

  func login(userName: String, password: String) throws -> Bool {      //throws serve para disparar um erro qnd acontecer um
    if chekInternetConnection() {
      if userName != "kaiky" {
        throw LoginError.wrongLogin
      }
      if password != "123456" {
        throw LoginError.wrongPassword
      }
      return true
    }else {
      throw LoginError.noInternetConnection
    }
}

func chekInternetConnection () -> Bool {
  return true
}
do {
  let loginResult = try login(userName: "kaiky", password: "123456")
} catch LoginError.wrongLogin {
  print("Nome do usuário inválido!")
} catch LoginError.wrongPassword {
  print("Senha inválida!")
}catch LoginError.noInternetConnection {
  print ("sem conexão")
}





//operadores personalizados aula 33 ===================

//unários -> operam somente em 1 operando
 //os operadores unarios podem ser do tipo
  //prefix -> operam do lado esquerdo do operando
  //postfix -> operam do lado direito do operando
 

//Binarios -> Operam em 2 operando
 //como ele opera no meio chamamos de:
  //infix
