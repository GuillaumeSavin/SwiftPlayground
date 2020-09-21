/*:
# Eléments de base de Swift
---
## var et let
*/
import Foundation
//: Lorsque l'on crée une instance d'un **type**, on peut toujours choisir d'en faire
//: * une variable avec `var`
//: * une constante avec `let`
var n = 5
//: n est *mutable* : on peut changer sa valeur...
n = 8
//: ... mais pas changer son type
//n = 3.5
//: car le typage existe : typage fort, déduit du contexte.\
//: Alors que dans :
let p = 5
//: p est *immuable* : on ne peut pas changer sa valeur.
//p = 7
/*:
 * Callout(Remarque):
Le compilateur vérifie que vous n'essayez pas de modifier la valeur d'un **let**. Non seulement, il remarque aussi qu'une **var** n'est jamais modifiée et va vous proposer de la changer en **let**. \
C'est une façon de rendre le code plus robuste.
 */
/*:
 page 1 sur 8  |  [Suivant : Typage](@next)
 */
