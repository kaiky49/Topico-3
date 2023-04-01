// Utilizando Arrays aula 23====================
// para fazer uma Array precisa usar []
var names = ["fulano", "cicrano", "Beltrano"]
 //pode-se adicionar quantos nome quizer


//Manipulando Dicionarios aula 24 -==================
 //descrever um valor dando a chave e e atribuindo o valor dela

var estados = [ "BA": "Bahia", "RJ": "Rio de Janeiro", "ES": "Espitiro Santo", "DF": "Distrito Federal", "CE": "Ceará","AM": "Amazonas", "AP": "Amapá"]

var gradeEstudantil: [String: Double] = [:]
 //para adicionar um novo "valor":

 estados["GO"] = "Goiaz"
//ops escrevi errado,vou modificar esse elemento associado a esssa chave

estados["GO"] = "Goiás"
//e para excluir :

estados["BA"] = nil
print(estados)


print("")

//trabalhando com Set e Tuplas aula 25=============

 //Set
// Coleção NÃO-ORDENADA de objetos de mesmo tipo,que não podem se repetir

//meus filmes favoritos
  var movies: Set<String> = [ "Vingadores","Homem aranha","Dr. estranho","Jurassic Park", "Click" ]

 //quero adicionar um filme novo

  movies.insert("Pantera negra")
  //vamos ver a minha lista
  print(movies)
  //quero contar qnts filmes tem na minha lista:
  print(movies.count)
  //nao e possivel inserir o mesmo filme na lista no tipo SET
  movies.insert("Pantera negra")
  print(movies.count) //ainda continuca como 6 filmes
  //quero remover um filme da minha lista:
  movies.remove("Click")
  //comando para remover todos: movie.removeAll()
  //para poder impeimir ou percorrer o SET e ver melhor meus filmes

  for movie in movies {
    print(movie)
}

//e para ver se um filme esta na minha lista adicionado caso eu n lembre:
    if movies.contains("Vingadores"){
      print("Esse filme está na minha lista de filmes")
    }else{
      print ("Esse filme nao foi encontrado em sua lista ")
    }
//vamos fazer um  conjunto defilmes com os fimes q meu amigo gosta com a minha lista
//filmes q ele gosta
    var listaAmigoFilmes: Set<String> = [
    "Como se fosse a primeira vez",
    "Barraca do beijo",
    "Virgem de 40 anos",
    "Vingadores",
    "Jurassic Park"
    ]
//lista favorita dos amigos,lista de filmes q os dois tem em comum

    let favoriteMovies = movies.intersection(listaAmigoFilmes)
    print(favoriteMovies)

    //criar uma lista juntando todos os filmes q gostamos

    let allMovies = movies.union(listaAmigoFilmes)
    print(allMovies)
    //agr quero criar uma lista q nao contenha os filmes do meu amigo,somente os meus filmes,inclusive sem os filmes q a gente tem em comum
    movies = movies.subtracting(listaAmigoFilmes)
    print (movies)

//Tuplas
//Tuplas serverm pra agrupar varios tipos (de qualquer tipo) em um unico valor

    //eu quero saber a minha distancia desse local usando o endreço dele
    //let endereco = "AV. Paulista, 1578, São Paulo - SP, 01310-200"
    // quero classificar cada tipo:
let endereco: (tipo: String, nome: String, numero: Int, cidade: String, estado: String, CEP: String ) = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200")
    //eu quero pegar uma informação desse enderaço:
print (endereco.cidade)

//agora:
let (tipo,nome,numero,cidade,estado,CEP) = endereco
//vou botar tuo isso no print
print(nome)
print(CEP)
