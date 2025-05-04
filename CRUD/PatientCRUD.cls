Class demo.PatientCRUD
{

/// Crear un nuevo paciente
/// Este método crea una nueva instancia de la clase Patient y asigna valores a sus propiedades.
/// ----------------------Ejemplo de uso----------------
/// USER> do ##class(demo.PatientCRUD).Create("1", "Juan Pérez", 68515, "male", "Calle Principal 123")
ClassMethod Create(id As %String, name As %String, birthDate As %Date, gender As %String, address As %String)
{
        // Crear una nueva instancia de Patient
        set patient = ##class(demo.Patient).%New()

        // Asignar valores a las propiedades
        set patient.id = id
        set patient.name = name
        set patient.birthDate = birthDate
        set patient.gender = gender
        set patient.address = address

        // Guardar el paciente en la base de datos
        set status = patient.%Save()

        if $$$ISOK(status) {
            write "Paciente creado con éxito.", !
        } else {
            write "Error al crear el paciente: ", $System.Status.GetErrorMessage(status), !
        }
}

/// Leer un paciente por ID
/// Este método busca un paciente en la base de datos por su ID y muestra sus detalles.
/// ----------------------Ejemplo de uso----------------
/// USER> do ##class(demo.PatientCRUD).Read("1")
ClassMethod Read(id As %String)
{
        // Buscar el paciente por ID
        set patient = ##class(demo.Patient).%OpenId(id)

        if '$IsObject(patient) {
            write "Paciente no encontrado.", !
        } else {
            // Imprimir los detalles del paciente
            do patient.PrintDetails()
        }
}

/// Actualizar un paciente
/// Este método busca un paciente en la base de datos por su ID y actualiza sus propiedades.
/// ----------------------Ejemplo de uso----------------
/// USER> do ##class(demo.PatientCRUD).Update("1", "Juan Pérez", "Calle Secundaria 456")
ClassMethod Update(id As %String, newName As %String, newAddress As %String)
{
        // Buscar el paciente por ID
        set patient = ##class(demo.Patient).%OpenId(id)

        if '$IsObject(patient) {
            write "Paciente no encontrado.", !
        } else {
            // Actualizar las propiedades
            set patient.name = newName
            set patient.address = newAddress

            // Guardar los cambios
            set status = patient.%Save()

            if $$$ISOK(status) {
                write "Paciente actualizado con éxito.", !
            } else {
                write "Error al actualizar el paciente: ", $System.Status.GetErrorMessage(status), !
            }
        }
}

/// Eliminar un paciente
/// Este método busca un paciente en la base de datos por su ID y lo elimina.
/// ----------------------Ejemplo de uso----------------
/// USER> do ##class(demo.PatientCRUD).Delete("1")
ClassMethod Delete(id As %String)
{
        // Eliminar el paciente por ID
        set status = ##class(demo.Patient).%DeleteId(id)

        if $$$ISOK(status) {
            write "Paciente eliminado con éxito.", !
        } else {
            write "Error al eliminar el paciente: ", $System.Status.GetErrorMessage(status), !
        }
}

}
