/// Clase de demostración para ejemplos relacionados con funciones de manipulación de cadenas (strings).
/// 
/// Esta clase proporciona un método que ilustra el uso de varias funciones de manipulación de cadenas disponibles en ObjectScript.
Class demo.FuncionesString
{

/// Método de ejemplo para ilustrar diversas funciones de manipulación de cadenas.
/// 
/// Este método realiza operaciones comunes sobre una cadena de texto, como convertir a mayúsculas/minúsculas,
/// reemplazar caracteres, eliminar espacios, extraer subcadenas y separar palabras.
/// 
/// Salida esperada:
/// ```
/// UPPERCASE: COMO MOLA LA GRAMOLA    
/// LOWERCASE: como mola la gramola    
/// REEMPLAZAR: C0me M0la la graM0la    
/// QUITAR ESPACIOS:ComoMolalaGraMola
/// HACER TRIM:Como Mola la graMola
/// EXTRAER DEL 5 al 15: Mola la gr
/// SEPARANDO POR ' ': Mola
/// ```
/// 
/// @return (void) Este método no devuelve ningún valor, pero imprime los resultados de las operaciones en la consola.
/// -------------------EJECUTAR --------------------
/// USER> do ##class(demo.FuncionesString).EjemploString()
ClassMethod EjemploString()
{
    set cadena = " Como Mola la graMola    "
    write "UPPERCASE:", $ZCONVERT(cadena, "U"), !
    write "LOWERCASE:", $ZCONVERT(cadena, "L"), !
    write "REEMPLAZAR:", $TRANSLATE(cadena, "o", "0"), !
    write "QUITAR ESPACIOS:", $TRANSLATE(cadena, " "), !
    write "HACER TRIM:", $ZSTRIP(cadena, "<>W"), !
    write "EXTRAER DEL 5 al 15:", $EXTRACT(cadena, 5, 15), !
    write "SEPARANDO POR ' ':", $PIECE(cadena, " ", 2), !
}

}
