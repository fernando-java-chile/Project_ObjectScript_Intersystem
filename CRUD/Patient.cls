/// Patient.cls
/// Clase que representa un paciente en el sistema de gestión de pacientes
/// Esta clase extiende %Persistent y define propiedades para almacenar información del paciente.
Class demo.Patient Extends %Persistent
{

/// Identificador único del paciente
Property id As %String [ Required ];

/// Nombre completo del paciente
Property name As %String;

/// Fecha de nacimiento del paciente
Property birthDate As %Date;

/// Género del paciente ("male", "female", "other")
Property gender As %String(MAXLEN = 10);

/// Dirección del paciente
Property address As %String;

/// Método para imprimir los detalles del paciente
Method PrintDetails()
{
        write "ID: ", ..id, !
        write "Nombre: ", ..name, !
        write "Fecha de Nacimiento: ", ..birthDate, !
        write "Género: ", ..gender, !
        write "Dirección: ", ..address, !
}

/// Storage Default lo craea automaticamente
/// y no es necesario definirlo manualmente
Storage Default
{
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>birthDate</Value>
</Value>
<Value name="5">
<Value>gender</Value>
</Value>
<Value name="6">
<Value>address</Value>
</Value>
</Data>
<DataLocation>^demo.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<Description>
<![CDATA[Storage Default lo craea automaticamente
y no es necesario definirlo manualmente]]></Description>
<IdLocation>^demo.PatientD</IdLocation>
<IndexLocation>^demo.PatientI</IndexLocation>
<StreamLocation>^demo.PatientS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
