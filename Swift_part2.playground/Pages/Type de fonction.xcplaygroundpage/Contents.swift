//: ## Type de la fonction
//: Chaque fonction a un type qui dépend des types de ses arguments et du type de son retour
//: ### Trois exemples de fonctions :
func fonctionTrinome(_ x:Float) -> Float {
    return x*x + 3*x - 4
}
func dire(_ message: String, à destinataire:String) -> String {
    return "je dis " + message + " à " + destinataire
}
func somme(_ liste:Int...) -> Int {
    var res = 0
    for x in liste {
        res += x
    }
    return res
}
//: Alors
//: - le type de `fonctionTrinome(_:)` est : `(Float)-> Float`
//: - le type de `dire(_:à:)` est : `(String, String) -> String`
//: - le type de `somme(_:)` est : `([Int]) -> Int`
import Cocoa
typealias FonctionRéelle = (Float) -> Float
var maFonction : FonctionRéelle =  fonctionTrinome
maFonction(5)
maFonction = sin
maFonction(5)

let tabF = [sin, cos, exp, fonctionTrinome]
for f in tabF { print(f(3)) }
//: Du coup on peut définir des fonctions qui prennent des fonctions comme argument
func evalue(fonction f: (Float)->(Float), en x: Float) -> Float  {
    return  f(x)
}
evalue(fonction: cos, en: 0)
evalue(fonction: tabF[2], en: 1)
exp(1.0)
//: ## Fonction comme type de retour
//: On peut définir des fonctions qui renvoient des fonctionsen utilisant des fonctions imbriquées
func generateurTrinome(a: Float, b:Float, c:Float)->(Float)->Float {
    // on définit une fonction imbriquée
    func f(_ x: Float) -> Float {
        return  a*x*x + b*x + c
    }
    return f
}
let g = generateurTrinome(a: 1, b: 2, c: 1)
g(-1)
// Afficher la courbe de g
for x:Float in stride(from: -4, to: 2, by: 0.1) {
    g(x)
}
//: [Prédédent : InOut](@previous) | page 7 sur  7
