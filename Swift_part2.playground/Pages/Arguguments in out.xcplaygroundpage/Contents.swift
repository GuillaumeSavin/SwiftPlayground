/*:
 ## Arguments `inout`
 */
//: ### Paramètres variables
//: Par défaut les arguments d'un appel de fonction sont stockés dans des paramèters constants (un let est sous-entendu); ils ne peuvent pas être modifiés dans le corps de la fonction.
func pasBon(x:Float) -> Float {
    //x = x + 2
    return x
}
//: ### Parametres inout
//: On ajoutant le mot-clé **inout** on déclare que l'argument de la fonction est aussi utilisé pour renvoyer une valeur (entrée et sortie).
//: - du coup le paramètre inout est par défaut de type mutable (var)
func bonMaisPasLisible( x: inout Float) -> Float {
    x = x + 2
    return x*x
}
var truc : Float = 5
print(bonMaisPasLisible(x: &truc))
print(truc)
//: - Cette fois les modifications à la valeur du paramètre affectent la valeur passée à la fonction
//: - Mais il faut appeler la fonction en mettant **&** devant le paramètre pour indiquer qu'on passe une **référence** (au lieu de faire une copie)
var t:Float = 4.5
t
bonMaisPasLisible(x: &t)
t
//: - Et on ne peut pas appeler cette fonction avec une costante ou un littéral
let t2 : Float = 3
//bonMaisPasLisible(x:&t2)
//bonMaisPasLisible(x:&1.1)
//: ### Exemple typique
func echange(_ x: inout Int, avec y: inout Int) {
    (x , y) = (y, x)
}
var b = 6, c = 7
print("avant b = \(b) et c = \(c)")
echange(&b, avec: &c)
print("après b = \(b) et c = \(c)")
echange(&b, avec: &c)
print("et encore : b = \(b) et c = \(c)")
//: [Prédédent : Viadiques](@previous) | page 6 sur  7 |  [Suivant : Type d'une fonction](@next)
