/*:
## Nombre des arguments
 
Une fonction peut avoir n'importe quel nombre d'arguments, de n'importe quel type, y compris aucun.
### Fonctions sans arguments
*/
func importante() -> String {
    return "Hello World"
}
let resultat = importante()
print(resultat)
//: ### Fonction sans valeur de retour
//: Et aussi elle peut n'envoyer aucune valeur. Dans ce cas il n'y aura pas de `return`
func importanteAussi() {
    print("Hello World")
}
importanteAussi()
//: Du coup, ici, on ne peut pas affecter le résultat dans une variable.
//: En fait ces fonctions sans `return` renvoient une valeur spéciale de type `Void` notée `()`; on peut aussi écrire :
func affiche(leTexte: String) -> () {
    print(leTexte)
}
affiche(leTexte: "Bonjour tout le monde")
/*:
 ### Fonctions avec plusieurs valeurs de retour
 Grâce aux `tuples` une fonction peut renvoyer plusieurs valeurs de types différents
 */
func divisionEuclidienne(a: Int, b:Int) -> (quotient:Int, reste:Int)  {
    return (a/b, a%b)
}
let n = 300, m = 45
let retour = divisionEuclidienne(a: n, b: m)
print("Division Euclidienne : \(n) = \(m) * \(retour.quotient) + \(retour.reste)")
//: [Prédédent : Définition](@previous) | page 2 sur  7 |  [Suivant : Etiquettes](@next)
