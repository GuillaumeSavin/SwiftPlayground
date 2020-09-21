//:# Fonctions dans Swift
//: ---
//:## Définir et appeler une fonction
//: Les fonctions sont des portions de code responsables d'une action bien précise et bien définie ; elles ont :
//: * un *nom* qui décrit la tâche effectuée par la fonction
//: * des *arguments* qui ont des noms et des types
//: * une valeur de retour qui a un type
//:
//: La commande Swift pour définir une fonction est `func`
func disMerci(à: String) -> String
{
    let message = "Merci " + à + " !"
    return message
}
//: ### Appel de fonction
disMerci(à: "Leo")
disMerci(à: "Emma")
/*:
 Le nom de cette fonction est `disMerci(à:)`\
 L'étiquette du paramètre fait partie du nom
 */
//:  page 1 sur  7 |  [Suivant : Arguments](@next)
