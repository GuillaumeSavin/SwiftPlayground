/*:
## Les n-uplets
 */
//: Dans swift on construit des tuples en mettant des objets (même de types différents) ensemble entre parenthèses.
let x = 3.5, s1 = "Bonjour"
var maTuple = (1, 2, x, s1, true)
//: On accède à l'un des composants de la tuple par la notation .
print(maTuple.1)
//: Ce n'est pas un tableau ; on ne peut pas y accéder avec des [].
//maTuple[i] // renvoie une erreur
//: Comme maTuple est une variable, on peut modifier ses éléments individuellement
maTuple.3 = "Salut"
print(maTuple)
//: Mais il faut respecter le type de chaque élément de la Tuple
//maTuple.3 = 5  //Renvoie une erreur
//: Car le type de `maTuple` est `(Int, Int, Double, String, Bool)`\
//: Du coup, une tuple, même variable ne peut pas être allongée. Car elle doit conserver son type.
//maTuple = (3, 3, 5, "Leo") // donne une erreur de type
//: En revanche si la tuple est déclarée par un let elle est globalement immuable.\
//: On peut accéder aux éléments d'une tuple par une autre tuple :
let (_,toto,_,s2,_) = maTuple
s2
toto
//: Le `_`indique les éléments qui ne nous intéressent pas !\
//: Permet de faire des affectations multiples
let (m, q) = (105, 34)
m%q
//: Et donc échanger les valeurs de deux variables :
var a = 3, b = 5
print(a,b)
(a, b) = (b,a)
print(a,b)
/*:
 ### Comparaisons de tuples
 Si les éléments qui composent la tuple sont comparables (c'est le cas pour les nombres mais aussi pour les String) alors on peut utiliser les opérateurs de comparaison usuelles et le test d'égalité.
 */
(2, "Leo") == (1 + 1, "L"+"eo")
(2, "Leo") < (2, "Emma")
(2, "Leo") < (3, "Emma")
//: ### Etiquettes
//: On peut donner une étiquette aux éléments d'une tuple
var v = (x:1, y:-1, z:2)
//: Et donc utiliser l'étiquette pour accéder en lecture et en écriture (si la tuple est mutable) à ses composants :
v.x+v.y+v.z
v.x=13
print("le vecteur vaut \(v)")
/*:
 ### Alias de Type
 On peut donner un nom personnel à un type existant pour augmenter la lisibilité du code avec `typealias`
 
 Par exemple pour définir un vecteur à trois coordonnées on puet utiliser une tuple de 3 Floats
 */
typealias Vecteur = (Float, Float, Float)
let u: Vecteur = (3, 0, 7)
print(u)
//: [Prédédent : String](@previous) | page 8 sur  8
