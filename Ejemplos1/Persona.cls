/// Clase que representa una persona con propiedades básicas y métodos para interactuar con ella.
/// 
/// Esta clase extiende `%RegisteredObject` y proporciona funcionalidades como la creación de personas,
/// la modificación de su nombre y la capacidad de saludar. Además, incluye un parámetro de clase para
/// representar el departamento al que pertenece la persona.
Class demo.Persona Extends %RegisteredObject
{

/// Parámetro que define el departamento predeterminado de la persona.
/// 
/// @parameter departamento (%String) El nombre del departamento asignado a todas las instancias de esta clase.
Parameter departamento = "Contabilidad creativa";

/// Propiedad que almacena el nombre de la persona.
/// 
/// @property nombre (%String) El nombre de la persona. No tiene límite de longitud (`MAXLEN = ""`).
Property nombre As %String(MAXLEN = "");

/// Propiedad que almacena el primer apellido de la persona.
/// 
/// @property primer_apellido (%String) El primer apellido de la persona.
Property "primer_apellido" As %String;

/// Método de clase para crear una nueva instancia de `demo.Persona`.
/// 
/// Este método inicializa una nueva persona con un nombre y un apellido, y luego llama al método `hola()`
/// para saludarla automáticamente.
/// 
/// @param nombre (%String) El nombre de la persona.
/// @param apellido (%String) El primer apellido de la persona.
/// @return (demo.Persona) Una nueva instancia de la clase `demo.Persona`.
/// 
/// ---------------EJECUCIÓN------------------
/// USER> set p = ##class(demo.Persona).Crear("Juan", "Pérez")
ClassMethod Crear(nombre As %String, apellido As %String) As demo.Persona
{
    #dim persona as demo.Persona
    set persona = ##class(demo.Persona).%New()
    set persona.nombre = nombre
    set persona."primer_apellido" = apellido
    do persona.hola()
    return persona
}

/// Método de clase para cambiar el nombre de una persona existente.
/// 
/// Este método actualiza la propiedad `nombre` de una instancia de `demo.Persona`.
/// 
/// @param p (demo.Persona) La instancia de la persona cuyo nombre se desea cambiar.
/// @param nombre (%String) El nuevo nombre que se asignará a la persona.
/// 
/// ---------------EJECUCIÓN------------------
/// USER> set p = ##class(demo.Persona).Crear("Juan", "Pérez")
ClassMethod CambiarNombre(p As demo.Persona, nombre As %String)
{
    set p.nombre = nombre
}

/// Método de instancia para saludar a la persona.
/// 
/// Este método es un alias que llama al método `hola()` de la instancia actual.
Method DecirHola()
{
    do ..hola()
}

/// Método de instancia que imprime un saludo personalizado para la persona.
/// 
/// Este método muestra el nombre, el primer apellido y el departamento de la persona en la consola.
/// 
/// Salida esperada:
/// ```
/// hola Juan Pérez!!
/// bienvenido a Contabilidad creativa!!
/// ```
/// ---------------EJECUCIÓN------------------
/// USER> set p = ##class(demo.Persona).Crear("Juan", "Pérez")
Method hola()
{
    write "hola " _ ..nombre _ " " _ .."primer_apellido" _ "!!", !
    write "bienvenido a " _ ..#departamento _ "!!"
}

}
