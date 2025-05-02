/// Clase de demostración para ejemplos relacionados con fechas y horas.
/// 
/// Esta clase proporciona métodos para explorar diferentes funciones de fecha y hora disponibles en ObjectScript.
Class demo.FuncionesFecha
{

/// Método de ejemplo para ilustrar diversas funciones de fecha y hora.
/// 
/// Este método imprime varias representaciones de fecha y hora utilizando funciones como `$ZTIMESTAMP`, `$HOROLOG`, `$ZDATE`, `$ZDATETIME`, `$ZDATEH` y `$ZDATETIMEH`.
/// 
/// Salida esperada:
/// ```
/// 2023-10-05 14:30:45.123 (Ejemplo de $ZTIMESTAMP)
/// 65739,52134 (Ejemplo de $HOROLOG)
/// Oct 5, 2023 (Ejemplo de $ZDATE)
/// Oct 5, 2023 14:30:45 (Ejemplo de $ZDATETIME)
/// Dec 31, 1999 (Ejemplo de $ZDATEH)
/// Dec 31, 1999 00:00:00 (Ejemplo de $ZDATETIMEH)
/// ```
/// 
/// @return (%Status) Devuelve un estado indicando si la ejecución fue exitosa.
/// -----------------------------------------------------------------------------
/// USER> do ##class(demo.FuncionesFecha).EjemploFechas()
ClassMethod EjemploFechas() As %Status
{
    write $ZTIMESTAMP, ! // UTC
    write $HOROLOG, ! // Fecha / Hora del Sistema
    write $ZDATE($HOROLOG,3), !
    write $ZDATETIME($HOROLOG,3), !
    write $ZDATEH("2000-01-01",3), !
    write $ZDATETIMEH("2000-01-01 10:02:03",3), !
}

/// Método de ejemplo para devolver la fecha actual en formato `$HOROLOG`.
/// 
/// `$HOROLOG` es un valor numérico que representa la fecha y hora actuales en el sistema.
/// El formato es `número de días desde el 31 de diciembre de 1840, segundos desde medianoche`.
/// 
/// Ejemplo de uso:
/// ```
/// set fecha = ##class(demo.FuncionesFecha).EjemploDate()
/// write fecha
/// ```
/// Salida esperada:
/// ```
/// 65739,52134
/// ```
/// 
/// @return (%Date) Devuelve la fecha actual en formato `$HOROLOG`.
/// ---------------------------------------------------------------------------
/// USER> set fecha = ##class(demo.FuncionesFecha).EjemploDate()
ClassMethod EjemploDate() As %Date
{
    Return $HOROLOG
}

}
