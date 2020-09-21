/*:
## Les chaînes de caractères
 */
//: Le type `String` décrit des chaînes de caractères Unicode mutables ou immuables selon que l'on utilise var ou let.
//: La syntaxe pour définir des chaînes littérales est la même que celle du `C` en utilisant des guillemets `"`
let exempleDeChaine = "Bonjour"
//: La concaténation de chaînes se fait avec l'opérateur `+`
var autreChaine : String = exempleDeChaine + " Leo"
autreChaine += " !"
print(autreChaine)
//: On peut définir des chaines longues sur plusieurs lignes avec des `triple guillemets'
let message = """
    -----------------------------
        Cours de Swift

    LPMI-CDTL DAM
    2018-2019

    leo.donati@univ-cotedazur.fr
    -----------------------------
    """
print(message)
//: Remarquez que l'espace utilisé avant les guillemets fermants est utilisé pour indiquer quelles tabulations ignorer dans la chaine...\
//: Comme les String acceptent n'importe quel caractère Unicode on peut utiliser certains Emoji dans ces chaines (mais en fait même dans les noms de variable)
let 😀 = "Bonjour 😝"
print(😀)
//: Pour **initialiser** une variable avec une chaine vide deux syntaxes sont possibles :
var s1 = ""
var s2 = String() //on appelle l'initialisateur du type String
//: ### Méthodes et Propriétés
//: Comme String est une classe (en fait un `struct`) il a de très nombreuses méthodes et propriétés :
s1.isEmpty
autreChaine.lowercased()
autreChaine.uppercased()
"Leo".uppercased()
print(message.count)
//: String est un type `valeur` : quand on le passe comme argument d'une fonction il est recopié. Ce n'est pas un type `référence`.
//: ### Les caractères
//: Le type `Character` permet de travailler avec les lettres qui composent la chaîne et parcourir une chaine dans une bouche `for-in`
let caractère : Character = "!"
for c: Character in "Leo" {
    print(c)
}
//: ### Interpolation des chaînes
//: C'est une façon très simple d'intégrer dans une chaîne la valeur d'une variable\
//: La syntaxe est `\(variable)` transforme la valeur de `variable` en String
var a = 12
print("Le carré de \(a) est \(a*a) ")
print("Ce message a \(message.count) lettres.")
//: ### Manipulation de String
//: Pour extraire, insérer une sous-chaîne dans une chaîne on utilise un type d'index associé `String.Index` qui donne la position d'un caractère dans une chaîne
exempleDeChaine
var i = exempleDeChaine.startIndex
var j = exempleDeChaine.endIndex
exempleDeChaine[i]
//exempleDeChaine[j]
i = exempleDeChaine.index(after: i)
j = exempleDeChaine.index(before: j)
exempleDeChaine[i]
exempleDeChaine[j]
//: On ne peut pas utiliser les entiers pour accéder aux lettres d'une chaîne.
//exempleDeChaine[3]
//: le type des variables `i` et `j` est `String.Index` pas `Int`
//: Et pourtant on peut les utiliser dans l'opérateur `range` comme les `Int`
let sousChaine = exempleDeChaine[i...]
exempleDeChaine[..<j]
//: [Prédédent : Bool](@previous) | page 7 sur  8 |  [Suivant : Tuples](@next)
