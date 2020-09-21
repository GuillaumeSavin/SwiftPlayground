/*:
 ## Valeurs par défaut
 On peut donner des valeurs par défaut à certains des paramètres d'une fonction.
 
 Du coup on peut omettre ces arguments lors de l'appel de la fonction et considérer donc cet argument comme optionnel.
 
 ### Syntaxe
 */
func f(x:Int, y:Int=4) -> Int {
    return 2*x - 3*y
}
/*:
 Alors
 * le nom de la fonction est `f(x:y:)`
 * on peut appeler `f` avec deux arguments
 * on peut appeler `f` avec un seul argument `x` (et `y` vaut 4)
 */
f(x: 5,y: -1)
f(x: 3)
/*:
 On peut donner des valeurs par défaut à plusieurs paramètres de la fonction (éventuellement tous) :
 */
func g(x:Int = 1, y:Int = 6) -> Int {
    return 2*x + 3*y
}
g()
g(x:5)
g(y:2)
g(x:3,y:1)
/*:
 Remarque : dans tous les cas le nom de la fonction est  `g(x:y:)`
 
 En général on met à la fin les paramètres qui ont une valeur par défaut.
 
 C'est le cas de la fonction système `print(_:separator:terminator:)`
 */
let message1 = "Bonjour à "
let message2 = "Toi"
let message3 = "et à Toi aussi"
print(message1,message2,message3,separator: "\n -" )

for i in 1...5 {
    print(i, i*i, separator: " -> ", terminator: ", ")
}
/*:
 En général, pour les fonctions sans étiquette, il faut obligatoirement mettre les paramètres optionnels en dernier, sinon on ne peut pas coupler les arguments et les paramètres
 */
func f(_ x: Int, _ y: Int = 0) -> Int {
    return 2*x + 3*y
}
f(3)
// C'est x qui vaut 3 (et y vaut 0)
func f2(_ x: Int = 0, _ y: Int) -> Int {
    return 2*x + 3*y
}
 ///f2(4)  // N'est pas accepté car considère que y n'a pas été affecté (et que c'est x qui vaut 4)
f2(4, 1)
//: Avec une étiquette on peut le faire
func f3(x: Int = 0, y: Int) -> Int {
    return 2*x + 3*y
}
f3(y:4)
//: [Prédédent : Etiquettes](@previous) | page 4 sur  7 |  [Suivant : Viadiques](@next)

