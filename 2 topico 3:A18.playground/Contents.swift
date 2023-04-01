import UIKit

var greeting = "Hello, playground"
//aulas anteriores no outro MacBook
/*Operadores Binários aula 18 =================*/

//Operador de Atribuicao: (=)
 let gravity  = 9.81
 var name = "kaiky"
 //operador de atribuicao e um operador q atribui um codigo a outro
 var age = 17
 print(name, "tem", age, "anos")
 
//aritimeticos: Soma (+) Subtracao (-) Multiplicacao (*) divisao (/) modulo (%)

//Soma: +
 var age1 = 25
 var age2 = 20
 let sum = age1 + age2

//subtracao: (-)

 let muinus = age1 - age2

//Multiplicacao
 
 let multiply = age1 * age2
//
//tipos diferentes dao erro,Exe: int + double
 let time1 = 12
 let time2 = 14.75

//let resulTimes = time1 = time2: Erro
//tipos so dao certo se forem iguais,entao tente arredondar ou mudar eles Ex:
 let time3 = 12.00
 let time4 = 14.75
 let resulTimes = time3 + time4
 //ou
 let time5 = 12
 let time6 = 14

//Divisao
 let Division = age1 / age2

//Modulo: Resto da divisao

 let toys = 35
 let kids = 6
 let modulus = toys % kids

//Operadores Compostos: Atribui e opera ap mesmo tempo
//age1 = age2 + age2
 age1 += age2

//-=, *=, /+, %=

  var products = 125
  var lastBuy = 22
  products -= lastBuy
  
//Comparacao: Fazem comparaacao entre valores (sempre retornam um Bool)
// Maior que: >
 
  let grade1 = 7.5
  let grade2 = 9.8
  let betterThanFriend = grade1 > grade2

//menor que: <

  let grade = 8.9
  let minimumGrade = 7.0
  let reproved = grade < minimumGrade
 
 //Maior ou igual a: >=
 //menor oi igual a: <=
  let approved = grade >= minimumGrade

//igualdade: ==

 let teacherName = "Rafael"
 let studentName = "rafael"

 let samesNames = teacherName.lowercased() == studentName.lowercased()
//.lowecased deixa todas as letras da constanre em minusculo

//desigualdade: !=

 let differentNames = teacherName != studentName


 /*
concatenacao============
 let nameProf = "Rafael Nicolau"
 let newAge = 40
 print ("\(nameProf) tem \(newAge) anos")
 */









 

 







 


