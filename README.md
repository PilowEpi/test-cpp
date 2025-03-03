# test-cpp

Chaque exercice est à ajouter au dernier en utilisant les headers dans le folder "src"

# STEP 1
## Linked List

Faire une liste chainée (simple ou double) permettant de faire l'effet d'une "queue".

Cette liste doit pouvoir aceuillir un pointeur "T *" et effectuer les actions dans la classe "SystemQueue"

# STEP 2
## Template

Modifier la classe "IProperty" qui hérite d'"AProperty" pour permettre de creer un object qui stocke n'importe qu'elle type.
La fonction "set" doit pouvoir set la variable privée.
La fonction "get" doit renvoyé la variable privée par référence.

# STEP 3
## MIX IT

Démontre moi que ton systeme marche, créer une queue, remplis la de "property" et avec la fonction pop_front() et concatene les valeur privé dans une std::string.

ex : 
prop 1 : uint16_t : 3000
prop 2 : uint8_t : 15
prop 3 : int :  77500
prop 4 : std::string : "toto"

result:
 std::string rlt = "3000,15,77500,toto"


# STEP 4
## More function

Rajoute une fonction GetDefaultValue() dans la classe IProperty qui me retourne la valeur de défaut de chaque type

int => 0
std::string => ""
uint8_t => 0

Et rajoute une fonction GetMaxValue() qui me donne le maximum de la IProperty

int => 2147483647
std::string => ""
uint8_t => 255

