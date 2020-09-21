/*:
 ## Arguments viadiques
 C'est la possibilité de spécifier que la fonction accèpte **n'importe quel nombre** d'arguments *du même type*
 
 * Il suffit de spécifier que le type est `Type...`
 * Alors le paramètre est un Array de Type : `[Type]`
 */
func somme(_ liste:Int..., départ y:Int = 0) -> Int {
    var res = y
    for x in liste {
        res += x
    }
    return res
}
somme(4, 5, 1, départ: 3)


/*:
 Ici `liste` est un tableau d'entiers

 On peut mélanger arguments viadiques et arguments normaux mais l'argument viadique doit être unique et *en dernier*
 * Callout( Exercice :):
 A partir de `somme` écrire une fonction qui calcule la moyenne d'une suite de réels
 */

//moyenne(12, 10, 8, 11, 11.5, 3)

func moyenne(_ liste:Double...) -> Double {
    let total = liste.count
    var res = 0.0
    
    for x in liste {
        res += x
    }
    res /= Double(total)
    return res
}

moyenne(12,10,8,11,11.5,3)
//: [Prédédent : Optionnels](@previous) | page 5 sur  7 |  [Suivant : InOut](@next)

