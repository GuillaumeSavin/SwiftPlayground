/*:
## Les nombres à virgule flottante
 */
//: Les types `Float` et `Double` représentent des nombres à virgule flottante sur 32 bits ou 64 bits.
var x : Float = 3
//: Lorsqu'on ne spécifie pas le type c'est `Double` qui est pris par défaut.
let y = -3.14
x = 3.4
//: Notation exponentielle
x = 3.4e3
//: Notation exponentielle en base 2
x = 0x1.1p4
//: Float et Double ont toute une série de méthodes et propriétés
x.isFinite
x.isZero
y.distance(to: Double.init())
max(6.4, 7.5)
/*:
 * Callout(Remarques):
    * Toutes opérations usuelles sont définies
    * Pour utiliser toutes les fonctions mathématiques courantes il faut importer la librairie Cocoa
 */
import Cocoa

cos(x)
exp(x)
cosh(x)
sqrt(x)
pow(3, 5)
/*:
 ### Erreur d'arrondi
 * Callout(Exercice :):
    * Que se passe-t-il si on calcule  `1 - 0.2 - 0.2 - 0.2 - 0.2 - 0.2` ?
    * Comparer avec  `1 - 0.2 * 5`
    * Expliquer
 */

//: [Prédédent : Int](@previous) | page 5 sur  8 |  [Suivant : Bool](@next)
