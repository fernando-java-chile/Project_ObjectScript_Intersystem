/// Clase de demostración para ejemplos de control de flujo en ObjectScript.
/// Contiene métodos que ilustran estructuras condicionales, bucles y diferencias entre `quit` y `return`.
Class demo.Control
{

/// Método de ejemplo para ilustrar estructuras condicionales (`if`, `$CASE` y `$SELECT`).
/// 
/// Este método evalúa el valor del parámetro `a` y muestra diferentes mensajes según su valor.
/// También demuestra el uso de las funciones `$CASE` y `$SELECT` para asignar valores condicionalmente.
/// 
/// @param a (%Integer) El valor entero a evaluar.
/// 
/// USER> do ##class(demo.Control).EjemploIf(1)
ClassMethod EjemploIf(a As %Integer)
{
    if a=1 {
        write "a es 1",!
    } elseif a=2 {
        write "a es 2",!
    } else {
        write "En otro caso",!
    }

    set b = $CASE(a,1:"b es uno",2:"b es dos",:"b es otro")
    write b, !

    set c = $SELECT(a=1:"c es uno",a=2:"c es dos",1:"c es otro")
    write c, !
}

/// Método de ejemplo para ilustrar diferentes tipos de bucles (`while`, `do-while` y `for`).
/// 
/// Este método ejecuta varios bucles para demostrar cómo funcionan las estructuras iterativas en ObjectScript.
/// 
/// @param hasta (%Integer) El número de iteraciones límite para los bucles.
/// 
/// USER> do ##class(demo.Control).EjemploBucle(5)
ClassMethod EjemploBucle(hasta As %Integer)
{
    set iterador = 1
    while iterador < hasta {
        write "ejecución "_iterador,!
        set iterador = iterador + 1
    }

    do {
        write "ejecución "_iterador,!
        set iterador = iterador - 1
    } While (iterador>0)

    for iterador=1:2:10 {
        write "ejecución For "_iterador,!
    }
}

/// Método de ejemplo para ilustrar el comportamiento de `quit` dentro de un bucle.
/// 
/// Este método contiene un bucle `for` que se interrumpe con `quit` cuando `iterador=5`. 
/// A diferencia de `return`, `quit` solo sale del bucle actual, permitiendo que el resto del método continúe ejecutándose.
/// 
/// @return (%Integer) Siempre devuelve `0`.
/// 
/// USER> do ##class(demo.Control).quit1()
ClassMethod quit1() As %Integer
{
    for iterador=1:1:10 {
        write "ejecución For "_iterador,!
        if (iterador=5) quit
    }
    write "aun no terminamos",!
    return 0
}

/// Método de ejemplo para ilustrar el comportamiento de `return` dentro de un bucle.
/// 
/// Este método contiene un bucle `for` que se interrumpe con `return` cuando `iterador=5`. 
/// A diferencia de `quit`, `return` finaliza inmediatamente la ejecución del método y devuelve un valor.
/// 
/// @return (%Integer) Devuelve `1` si `iterador=5`, de lo contrario devuelve `0`.
/// 
/// USER> do ##class(demo.Control).return1()
ClassMethod return1() As %Integer
{
    for iterador=1:1:10 {
        write "ejecución For "_iterador,!
        if (iterador=5) return 1
    }
    write "aun no terminamos",!
    return 0
}

}
