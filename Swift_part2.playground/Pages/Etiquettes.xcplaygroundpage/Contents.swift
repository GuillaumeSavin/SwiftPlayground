/*:
 ## Etiquettes
 Chaque paramètre d'une fonction a
* une étiquette d'argument,
    - fait partie du nom de la fonction
    - doit être utilisé lorsqu'on appelle la fonction
    - précède la valeur de l'argument
    - indique la signification de l'argument
* un nom de paramètre,
    - utilisé en interne dans l'implémentation de la fonction
    - est invisible à l'utilisateur de la fonction

 ### Sans étiquette explicite
 Alors, par défaut, le nom du paramètre devient l'étiquette d'argument :
 */
 func f(x: Float) -> Float {
    return 2*x + 3
 }
//f(3)  // Ne marche pas
f(x: 3)
/*:
 Dans `f(x:)`,   `x` est à la fois l'étiquette de l'argument (car on l'utilise à l'appel de la fonction) et le nom du paramètre (utilisé dans le calcul de la fonction.
 
 ### Avec étiquette explicite
 L'étiquette d'argument se place avant le nom du paramètre :
 */
func calcule(avec x: Float) -> Float {
    return 2*x*x + 3*x
}
calcule(avec: 5)
/*:
 Dans `calcule(avec:)`
 * l'étiquette de l'argument est `avec` (qui complète le nom de la fonction en faisant une espèce de phrase)
 * le nom du paramètre est `x` (invisible à l'utilisateur)
 
 ### Pour se passer d'étiquette
 Dans certains cas on veut définir une fonction avec une syntaxe de type `C` sans devoir obligatoirement donner l'étiquette de l'argument. C'est possible en Swift  (c'est le cas par exemple de la fonction `print`)
 
 Pour cela on fait précéder le nom de paramètre par un *underscore* `_`
 */
func g(_ x: Float, _ y: Float) -> Float {
    return 2*x*y + 3*x - 5*y + 7
}
g(3, -2)
/*:
 Le nom complet de cette fonction est dans ce cas `g(_:_:)`.
 
 Et lorsqu'il y a plusieurs arguments certains peuvent être sans étiquettes, certains peuvent avoir une étiquette explicite et certains une étiquette par défaut
 */
func fonctionInutile(_ x:Bool, avec s:String, et n:Int, pour:Float ){
    print("Je suis inutile")
}

fonctionInutile(true, avec: "Peggy !", et: 42, pour: 20.0)
/*:
 * Callout(Exercice :):
    * Quel est le nom de la fonction ?
    * Combien a-t-elle d'arguments ?
    * Donner un exemple d'appel de cette fonction
    * Donner la liste des noms des paramètres
 */



//: [Prédédent : Arguments](@previous) | page 3 sur  7 |  [Suivant : Optionnels](@next)

