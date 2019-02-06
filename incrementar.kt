fun almostIncreasingSequence(sequence: MutableList<Int>): Boolean 

{
// inicializando variables
var removercuenta = 0;
var x = 0;
// Obteniendo valores de sequence le restamos uno para obtener el numero de elementos del arreglo

while  ( i < sequence.size - 1) {

//Entra cuando el arreglo tiene al menos 1 valor
//Asignamos la variable actual que obtendra la posicion actual del elemento  
                          
var actual = sequence[x];
var siguiente = sequence[x + 1];

 // si la variable actual es mayor al siguiente numero , sumaremos al contador removercuenta 1                         
if (actual >= siguiente) {

removercuenta++;

//Declaramos 2 variables de Boolenas
//nos servira para borrar la posicion actual    
var removeCurrent : Boolean= x == 0 || sequence[x - 1] < siguiente;
// nos servira para borrar la soguiente posicion si se cumplen las condiciones
var removeNext : Boolean = x + 1 == sequence.size - 1 || actual < sequence[x + 2];
// si ambos valores son false nos agregara un contador en remover cuenta
if (!removeCurrent && !removeNext)

    removercuenta++;

      }
// en caso de haber mas de una irregularidad mas de un numero incremetado nos retornara false
      if (removercuenta > 1) {

                    return false;

        }

      i++

    }
// en caso de haber solo uno incrementado nos deolvera true
    return true;  

 }