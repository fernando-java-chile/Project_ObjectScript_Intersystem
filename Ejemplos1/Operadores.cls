/// Clase de demostración para ejemplos relacionados con operadores en ObjectScript.
/// 
/// Esta clase proporciona métodos que ilustran el uso de operadores aritméticos, lógicos y de control en ObjectScript.
Class demo.Operadores
{

/// Método de ejemplo para ilustrar el uso de `quit` y `return`.
/// 
/// Este método asigna un valor a una variable y lo devuelve utilizando `return`.
/// Aunque `quit` también puede usarse para salir de un método, aquí se muestra cómo `return` es más explícito.
/// 
/// @return (%String) Devuelve el valor de la variable `a`.
/// 
/// ---------------EJECURCION------------------
/// USER> do ##class(demo.Operadores).EjemploQuit()
ClassMethod EjemploQuit() As %String
{
    set a = "Hola"
    // quit a
    return a
}

/// Método de ejemplo para ilustrar operadores lógicos.
/// 
/// Este método demuestra el uso de operadores lógicos como `&&`, `||`, `&`, `!` y `NOT`.
/// También incluye un ejemplo de evaluación condicional con división por cero.
/// 
/// Salida esperada:
/// ```
/// verdadero && falso => 0
/// verdadero || falso => 1
/// NOT verdadero => 0
/// verdadero & falso => 0
/// verdadero ! falso => 1
/// verdadero || (543/falso) => 1
/// ```
/// 
/// ---------------EJECURCION------------------
/// USER> do ##class(demo.Operadores).EjemploLogica()
ClassMethod EjemploLogica()
{
    set verdadero = 1
    set falso = 0
    write "verdadero && falso => ", verdadero && falso, !
    write "verdadero || falso => ", verdadero || falso, !
    write "NOT verdadero => ", ' verdadero, !
    write "verdadero & falso => ", verdadero & falso, !
    write "verdadero ! falso => ", verdadero ! falso, !
    write "verdadero || (543/falso) => ", verdadero || (543/falso), !
}

/// Método de ejemplo para ilustrar la precedencia de operadores lógicos.
/// 
/// Este método evalúa una expresión lógica con `||` y `=` para demostrar la precedencia de operadores.
/// 
/// Salida esperada:
/// ```
/// TRUE
/// ```
/// 
/// ---------------EJECURCION------------------
/// USER> do ##class(demo.Operadores).EjemploPrecedenciaLogica()
ClassMethod EjemploPrecedenciaLogica()
{
    set verdadero = 1
    set falso = 0
    if verdadero || (falso = 0) {
        write "TRUE"
    } else {
        write "FALSE"
    }
}

/// Método de ejemplo para ilustrar la precedencia de operadores aritméticos.
/// 
/// Este método evalúa una expresión aritmética con `+` y `*` para demostrar la precedencia de operadores.
/// 
/// Salida esperada:
/// ```
/// 13
/// ```
/// 
/// ---------------EJECURCION------------------
/// USER> do ##class(demo.Operadores).EjemploPrecedencia()
ClassMethod EjemploPrecedencia()
{
    write 3 + (2 * 5)
}

/// Método de ejemplo para ilustrar operadores aritméticos.
/// 
/// Este método demuestra el uso de operadores aritméticos como `+`, `-`, `*`, `**`, `/`, `\` y `#`.
/// También incluye ejemplos de concatenación implícita y manejo de cadenas en operaciones aritméticas.
/// 
/// Salida esperada:
/// ```
/// 2+3 = 5
/// 2-3 = -1
/// 2*3 = 6
/// 2**3 = 8
/// 2/3 = .6666666666666666667
/// 5\3 = 1
/// 5#3 = 2
/// ```
/// 
/// ---------------EJECURCION------------------
/// USER> do ##class(demo.Operadores).EjemploAritmetica()
ClassMethod EjemploAritmetica()
{
    set dos = "2,Caracol2"
    set tres = dos + "1"
    set cinco = dos + tres
    write "2+3 = ", dos + tres, !
    write "2-3 = ", dos - tres, !
    write "2*3 = ", dos * tres, !
    write "2**3 = ", dos ** tres, !
    write "2/3 = ", dos / tres, !
    write "5\3 = ", cinco \ tres, !
    write "5#3 = ", cinco # tres, !
}

}
