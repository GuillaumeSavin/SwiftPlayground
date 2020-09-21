/*:
## Les booléens
 */
//: Le type Bool contient deux valeurs constantes , `true` et `false`
//: Sur lequel on peut utiliser tous les opérateurs logiques usuels
let x = 2.5
var resultat = x < 0//x.isLess(than: 0)
//: Opérateurs logiques usuels :
//: * négation avec `!`
//: * et logique (conjonction) avec `&&`
//: * ou logique (disjonction) avec `||` (Alt+shift+L sur clavier Mac)
!resultat
resultat && true
resultat || true
/*:
 Les booléens sont utilisés dans les tests `if` et dans les conditions de sortie des `while`
*/
if (x > 2) && (x < 3) {
    print("Oui : x ∈ ]2, 3[")
}
//: Mais aussi dans l'opérateur ternaire `bool ? choixVrai : choixFaux`:
let reponse = x > 3 ? "oui" : "Non"
/*:
 ### Opérateurs binaires
* Callout(Attention):
 A ne pas confondre avec les opérateurs *binaires* et/ou/xor/complément
 */
let a = 0b101
let b = 0b110
a & b
a | b
a ^ b
~a
/*:
 Pour afficher un entier dans une base différente que labase 10, on utilise une variante de l'initialiseur de `String` avec un argument `radix:`
 */
String(a & b, radix: 2)
/*:
 D'autres opérateurs sont `>>` et `<<` qui déplacent les bits vers la droite ou la gauche.
 */
var nbBinaire = 0b110011
nbBinaire = nbBinaire >> 3
String(nbBinaire, radix: 2)
nbBinaire = nbBinaire << 3
String(nbBinaire, radix: 2)
//: [Prédédent : Float](@previous) | page 6 sur  8 |  [Suivant : String](@next)
