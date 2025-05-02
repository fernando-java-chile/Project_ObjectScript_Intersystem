/// Clase de demostración para ejemplos relacionados con listas.
/// 
/// Esta clase proporciona un método que ilustra el uso de una lista (%ListOfDataTypes) en ObjectScript.
Class demo.Listas
{

/// Método de ejemplo para trabajar con una lista (%ListOfDataTypes).
/// 
/// Este método crea una lista, inserta elementos en ella, muestra el número total de elementos
/// y recorre la lista para imprimir cada elemento.
/// 
/// Salida esperada:
/// ```
/// Numero de elementos: 2
/// Elemento 1: Hola
/// Elemento 2: Adios
/// ```
/// 
/// @return (void) Este método no devuelve ningún valor, pero imprime los resultados en la consola.
/// -------------------EJECUTAR --------------------
/// USER> do ##class(demo.Listas).EjemploLista()
ClassMethod EjemploLista()
{
    #dim lista as %ListOfDataTypes
    set lista = ##class(%ListOfDataTypes).%New()
    do lista.Insert("Hola")
    do lista.Insert("Adios")
    write "Numero de elementos: ", lista.Count(), !
    for iterador = 1:1:lista.Count() {
        write "Elemento "_iterador_": ", lista.GetAt(iterador), !
    }
}

}
