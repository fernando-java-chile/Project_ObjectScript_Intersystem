/// Clase principal para la demostración de una calculadora.
/// Esta clase proporciona métodos básicos para realizar operaciones matemáticas y generar números aleatorios.
Class demo.Calculadora
{

/// Método para sumar dos números.
/// 
/// Este método toma dos números de tipo %Double como entrada y devuelve su suma.
/// 
/// @param a (%Double) El primer número a sumar.
/// @param b (%Double) El segundo número a sumar.
/// @return (%Double) La suma de los dos números.
ClassMethod Sumar(a As %Double, b As %Double) As %Double
{
    return a + b
}

/// Método para generar un número aleatorio y asignarlo a una variable pasada por referencia.
/// 
/// Este método demuestra el uso de argumentos pasados por referencia (`ByRef`) en ObjectScript.
/// Al llamar a este método, el valor inicial de la variable se imprime, se genera un número aleatorio
/// entre 0 y 99, y el nuevo valor se asigna a la variable.
/// 
/// @param numero (ByRef %Integer) Una variable pasada por referencia. Al inicio del método, contiene
///               el valor inicial (si existe), y al final del método, contendrá un número aleatorio generado.
ClassMethod DameUnNumeroAleatorio(ByRef numero As %Integer)
{
    write "1.numero = "_numero,!
    set numero = $RANDOM(100)
    write "2.numero = "_numero,!
}

}
