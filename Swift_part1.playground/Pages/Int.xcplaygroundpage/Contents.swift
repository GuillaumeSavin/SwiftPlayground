//:## Les entiers
//: Les entiers peuvent être signés ou non signés et peuvent être stockés sous 8, 16, 32 ou 64 bits. Par exemple `UInt8` est un entier non signé (unsigned) sous 8 bits.\ Swift empèche alors les erreurs d'*overflow* (dépassement de la capacité maximale).
var a : UInt8 = 0
a = UInt8.max
//a+1 // Génère une erreur d'exécution
//a = -1 //Génère une erreur de compilation
print(a)
var b : Int8 = Int8.max
//b+1
a = UInt8(b)+1
//: Lorsque l'on ne spécifie pas la taille (Int ou UInt) alors la taille utilisée dépend de la plateforme (32 bits ou 64 bits).
//: En général il est conseillé de travailler toujours avec Int.
var unEntier  = 15*12
print(Int.min, Int.max)
//: On peut initialiser un Int en utilisant différentes bases (integer litterals)
a = 0b111 //7 en binaire
a = 0o17  //15 en octal
a = 0x2F  //47 en hexadécimal
//: Ou bien en décimal pour regrouper des paquets de 1000
unEntier = 1_000_001
/*:
 * Callout(Opérateurs):
 Tous les opérateurs usuels existent en swift pour les opérations élémentaires entre entiers.
    * somme `+`
    * produit `*`
    * différence `-`
    * quotient de la division entière `/`
    * reste de la division entière `%`
 */
17 / 4
17 % 4
/*:
 * Callout(Exercice):
 Swift offre des versions des opérations arithmétiques qui ignorent l'overflow : `&+`; `&*`...
    * Essayez `a = 255 &+ 1`. Expliquez !
    * Comparez avec `b = 127 &+ 1`.
 */

/*:
 * Callout(Attention):
 Si l'on veut que la division de deux entiers donne un résultat à virgule, il faut absolument qu'au moins l'un des deux membres soit un Float ou un Double :
 */
var x = Float(3)/4
x = 3.0/4
x = (1.0 * 3)/4
x = Float(3/4)
//: [Prédédent : Types de base](@previous) | page 4 sur  8 |  [Suivant : Float](@next)
