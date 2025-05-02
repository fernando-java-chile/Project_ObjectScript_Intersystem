Include MiMacro

/// Clase de demostración para ejemplos relacionados con el uso de macros.
/// 
/// Esta clase utiliza una macro definida en `MiMacro` para ilustrar cómo incluir y usar macros en ObjectScript.
/// 
/// **Nota**: Asegúrate de que la rutina `MiMacro` esté correctamente incluida en el proyecto.
Class demo.UsoDeMacro
{

/// Método de ejemplo para probar el uso de macros.
/// 
/// Este método utiliza la macro `$$$ROJO` (definida en `MiMacro`) para imprimir el valor asociado a la macro.
/// 
/// ----------------EJECUCIÓN------------------
/// USER> do ##class(demo.UsoDeMacro).probar()
ClassMethod probar()
{
    write $$$ROJO
}

}
