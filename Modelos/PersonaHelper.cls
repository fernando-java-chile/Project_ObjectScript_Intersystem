/// Clase de ayuda para los ejemplos relacionados con `Persona`, `Empleado` y `Departamento`.
/// 
/// Esta clase proporciona métodos para poblar datos de ejemplo en las tablas `Persona`, `Empleado` y `Departamento`.
Class demo2.PersonaHelper
{

/// Método para poblar la tabla `Persona` con datos de ejemplo.
/// 
/// Este método elimina todos los registros existentes en la tabla `Persona` y luego crea nuevos registros
/// con datos ficticios de personas, incluyendo su nombre, apellido y dirección completa.
/// 
/// Ejemplo de uso:
/// ```
/// USER>do ##class(demo2.PersonaHelper).Poblar()
/// ```
ClassMethod Poblar()
{
    // Eliminar todos los registros de una vez
    do ##class(demo2.Persona).%DeleteExtent()

    // Crear los registros
    #dim p as demo2.Persona
    set p = ##class(demo2.Persona).%New()
    set p.Nombre = "Rosa"
    set p.Apellido = "Melano"
    set p.Direccion.Calle = "Calle Jon, 24"
    set p.Direccion.Localidad = "Cantones"
    set p.Direccion.Provincia = "Toledo"
    set p.Direccion.CodigoPostal = "9090"
    do p.%Save()

    set p = ##class(demo2.Persona).%New()
    set p.Nombre = "Elber"
    set p.Apellido = "Galarga"
    set p.Direccion.Calle = "Avenida de los Gañanes"
    set p.Direccion.Localidad = "Pirulines"
    set p.Direccion.Provincia = "Sevilla"
    set p.Direccion.CodigoPostal = "8080"    
    do p.%Save()

    set p = ##class(demo2.Persona).%New()
    set p.Nombre = "Lucho"
    set p.Apellido = "Portuano"
    set p.Direccion.Calle = "Travesia de los lamentos"
    set p.Direccion.Localidad = "Meloneras"
    set p.Direccion.Provincia = "Murcia"
    set p.Direccion.CodigoPostal = "4040"    
    do p.%Save()
}

/// Método para crear un empleado y asignarlo a un departamento.
/// 
/// Este método elimina todos los registros existentes en las tablas `Empleado` y `Departamento`,
/// luego crea un nuevo departamento y un empleado asociado a ese departamento.
/// 
/// Ejemplo de uso:
/// ```
/// do ##class(demo2.PersonaHelper).Contratar()
/// ```
ClassMethod Contratar()
{
    // Eliminar todos los registros de una vez
    do ##class(demo2.Empleado).%DeleteExtent()
    do ##class(demo2.Departamento).%DeleteExtent()

    #dim dpto as demo2.Departamento
    set dpto = ##class(demo2.Departamento).%New()
    set dpto.Nombre = "Tecnología de la Información"
    do dpto.%Save()

    #dim e as demo2.Empleado
    set e = ##class(demo2.Empleado).%New()
    set e.Nombre = "Elvis"
    set e.Apellido = "Cocho"
    set e.Direccion.Calle = "Camino de la Marmota"
    set e.Direccion.Localidad = "Zilotes"
    set e.Direccion.Provincia = "Vigo"
    set e.Direccion.CodigoPostal = "7070"
    set e.Cargo = "Director"
    set e.Responsable = ##class(demo2.Persona).%OpenId(1)
    set e.Departamento = dpto

    do e.%Save()
}

}
