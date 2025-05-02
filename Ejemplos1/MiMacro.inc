ROUTINE MiMacro [Type=INC]
/// Esta rutina define macros que representan nombres de colores en formato de cadena.
/// Las macros pueden ser utilizadas para estandarizar los valores de colores en el código,
/// lo que mejora la legibilidad y facilita el mantenimiento.
/// 
/// @macro ROJO   Representa el color "red" (rojo).
/// @macro VERDE  Representa el color "green" (verde).
/// @macro AZUL   Representa el color "blue" (azul).
/// 
/// Ejemplo de uso:
/// ```
/// write $$$ROJO    // Salida: red
/// write $$$VERDE   // Salida: green
/// write $$$AZUL    // Salida: blue
/// ```
#define ROJO "red"
#define VERDE "green"
#define AZUL "blue"