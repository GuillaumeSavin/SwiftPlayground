/*:
 ## Typage
 */
//: On peut définir *explicitement* le type d'une variable ou d'une constante ; on appelle ça *Annotation du type*
var x : Float = 3.5
//: Toutefois, si on ne le fait pas, Swift est capable de déduire le type à partir de la façon dont elle est initialisée : c'est l'*inférence de type*.
let message = "Bonjour !"
//: Avantages de spécifier le type :
//: * ça augmente la lisibilté du code
//: * ça permet de remplacer la déduction du typage par un typage choisi :
let y : Float = 4
// y est de type Float même si 4 est un Int : il y a alors une conversion de type implicite
var z = 3.5
// z est un Double car par défaut les nombres à virgule sont des Double et pas des Float
//: * c'est obligatoire quand la variable n'est pas initialisée car Swift alors ne peut pas déduire son type
// var t // n'est pas accepté
var t : Int = 3
t = 7
t = Int(x)
// ici il y a une conversion explicite de Float en Int
//: * Mais en général, lorsque la variable ou la constante sont clairement initialisées, on peut se permettre de ne pas spécifier le type.
//:
//: [Prédédent : Var et Let](@previous) | page 2 sur  8 |  [Suivant : Types de base](@next)



