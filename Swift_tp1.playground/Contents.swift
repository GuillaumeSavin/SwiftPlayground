/*:
 # Programmation en Swift
 ## LPMI CDTL-DAM   TP n° 1
 Avant de commencer ce TP, il faut avoir lu et expérimenté les parties 1 et 2 du cours sur Swift.
 
 Lancer `Xcode` et ouvrez un nouveau `Playground` de type `Blank` pour `MacOS`.
 
 ### Exercice n°1 : Tables de vérité
 Si l'on définit un tableau de booléens :
 */
let valeurDeVerité = [false, true]
/*:
 alors on peut utiliser la boucle `for-in` pour tester toutes les valeurs et produire une table de vérité comme dans :
*/
print("------------------------")
print("|    p    |   non(p)   |")
print("------------------------")
for p in valeurDeVerité {
    print("|  \(p)   |   \(!p)    |")
}
print("------------------------")

/*:
 qui produit
````
 ------------------------
 |    p    |   non(p)   |
 ------------------------
 |  false   |   true    |
 |  true   |   false    |
 ------------------------
````
 */

func proposition_P_And_Q(_ p: Bool, _ q: Bool) -> Bool {
    return p && q
}

func tableDeVeritePAQ(prop: (Bool, Bool) -> Bool) {
    print("------------------------------")
    print("|  p  |  q  |p&&q |")
    print("------------------------------")
    for p in valeurDeVerité {
        for q in valeurDeVerité {
            print("|  \(p)  |  \(q)  |  \(prop(p, q))  |")
        }
    }
    print("------------------------------")
    
}

tableDeVeritePAQ(prop: proposition_P_And_Q(_:_:))




func proposition(_ p: Bool,_ q:Bool) -> Bool
{
    return p && (!p || q)
}

func tableDeVeriteAdvanced(prop: (Bool, Bool) -> Bool) {
    print("------------------------------")
    print("|  p  |  q  |resultat|")
    print("------------------------------")
    for p in valeurDeVerité {
        for q in valeurDeVerité {
            print("|  \(p)  |  \(q)  |  \(prop(p, q))  |")
        }
    }
    print("------------------------------")
}

tableDeVeriteAdvanced(prop: proposition(_:_:))

func inverseChaine(str: String) -> String {
    var reverse = ""
    for char in str {
        reverse = String(char) + reverse
    }
    
    return reverse
}

//inverseChaine(str: "! yggeP yggeP yggeP")

func testPalindrome(str: String) -> Bool {
    let strCopy = str.lowercased()
    if(inverseChaine(str: strCopy) == strCopy) {
        return true
    }
    else {
        return false
    }
}

testPalindrome(str: "Kayak")

typealias Fraction = (Int, Int)

func PGCD(int: Int, int2: Int) -> Int {
    var reste = -1
    var num = int
    var quot = int2
    
    while(reste != 0)
    {
        reste = num % quot
        print("\(num) = \(quot) x \(num / quot) + \(reste)")
        if (reste != 0 ) {
            num = quot
            quot = reste
        }
        
    
    }
    
    return quot
}
PGCD(int: 2, int2: 2)
func reduit(fraction: Fraction) -> Fraction {
    var num = fraction.0
    var quot = fraction.1
    var pgcd = 0
    
    pgcd = PGCD(int: num, int2: quot)
    
    if pgcd != 1 {
        num = num / pgcd
        quot = quot / pgcd
    }
    
    return (num, quot)
}
func neg(fraction: Fraction) -> Fraction {
    var fraNeg = fraction
    var numerator = -fraNeg.0
    fraNeg.0 = numerator
    return fraNeg
}
func inv(fraction: Fraction) -> Fraction {
    var fraInv = fraction
    var numerator = fraction.1
    var denominator = fraction.0
    
    fraInv = Fraction(numerator, denominator)
    
    return fraInv
}
func prod(fraction: Fraction, fraction2: Fraction) -> Fraction {
    var fraProd = Fraction(0,0)
    var numerator = fraction.0 * fraction2.0
    var denominator = fraction.1 * fraction2.1
    
    fraProd = Fraction(numerator, denominator)
    
    return fraProd
}
func som(fraction: Fraction, fraction2: Fraction) -> Fraction {
    var denominator = 0
    var numerator = 0
    if (fraction.1 == fraction2.1) {
        denominator = fraction.1
        numerator = fraction.0 + fraction2.0
    }
    else {
        denominator = fraction.1 * fraction2.1
        numerator = fraction.0 * fraction2.1 + fraction2.0 * fraction.1
    }
    
    return Fraction(numerator, denominator)
}
func div(fraction: Fraction, fraction2: Fraction) -> Fraction {
    return Fraction(prod(fraction: fraction, fraction2: inv(fraction: fraction2)))
}
func sub(fraction: Fraction, fraction2: Fraction) -> Fraction {
    return som(fraction: fraction, fraction2: neg(fraction: fraction2))
}
func isEqual(fraction: Fraction, fraction2: Fraction) -> Bool {
    var fra = reduit(fraction: fraction)
    var fra2 = reduit(fraction: fraction2)
    return ((fra.0 == fra2.0) && (fra.1 == fra2.1))
}
func isGreater(fraction: Fraction, fraction2:Fraction) -> Bool {
    let res = Float(fraction.0) / Float(fraction.1)
    let res2 = Float(fraction2.0) / Float(fraction2.1)
    
    return res > res2
}
func isLess(fraction: Fraction, fraction2:Fraction) -> Bool {
    let res = Float(fraction.0) / Float(fraction.1)
    let res2 = Float(fraction2.0) / Float(fraction2.1)
    
    return res < res2
}

neg(fraction: (5,2))
inv(fraction: (5,2))
prod(fraction: (2,2), fraction2: (2,2))
som(fraction: (2,1), fraction2: (2,2))
div(fraction: (3,2), fraction2: (2,2))
sub(fraction: (3,2), fraction2: (2,2))
isEqual(fraction: (88,12), fraction2: (22,3))
isEqual(fraction: (450,180), fraction2: (5,2))
isEqual(fraction: (35,91), fraction2: (5,13))
isEqual(fraction: (999,441), fraction2: (111,49))
isEqual(fraction: (3500,4900), fraction2: (5,7))
isEqual(fraction: (88,12), fraction2: (5,2))
reduit(fraction: (3500, 4900))
isGreater(fraction: (10,500), fraction2: (2,5))
isLess(fraction: (20,2), fraction2: (3,2))
var tab = [Fraction]()

tab = [Fraction(2,2), Fraction(3,2), Fraction(20,5), Fraction(8,42)]
var tab2 = [Fraction]()

for i in 0 ... 100 {
    tab2.append(Fraction(1, 2 * i + 1))
}

func min(_ tab: [Fraction]) -> Fraction? {
    var taille = tab.count
    
    print(taille)
    if(taille != 0) {
        var min = tab[0]
        for i in tab {
            if isLess(fraction: i, fraction2: min) {
                min = i
            }
        }
        return min
        
    }
    else {
        return nil
    }
    
    
}
func max(_ tab: [Fraction]) -> Fraction? {
    var taille = tab.count
    
    print(taille)
    if(taille != 0) {
        var max = tab[0]
        for i in tab {
            if isGreater(fraction: i, fraction2: max) {
                max = i
            }
        }
        return max
        
    }
    else {
        return nil
    }
    
    
}
func somme(_ tab: [Fraction]) -> Fraction? {
    var taille = tab.count
    var res = Fraction(0,1)
    print(taille)
    if(taille != 0) {
        for i in tab {
            print("\(res) + \(i)")
            res = som(fraction: res, fraction2: i)
            print(res)
        }
        return res
    }
    else {
        return nil
    }
}
func sort(_ tab: [Fraction]) -> [Fraction] {
    var taille = tab.count
    var tabRes = [Fraction]()
    print(taille)
    if(taille != 0) {
        for i in tab {
            tabRes.append(min()
            res = som(fraction: res, fraction2: i)
            print(res)
        }
        return res
    }
    else {
        return nil
    }
}
var tabNil = [Fraction]()
print(tab)
print(tab2)
var res = min(tabNil)
print(min(tabNil))
print(max(tabNil))
print(max(tab2))
print(min(tab2))
print(somme(tabNil))
print(somme(tab))

