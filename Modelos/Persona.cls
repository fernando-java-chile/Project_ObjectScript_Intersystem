/// Clase que representa a una persona en una organización.
/// 
/// Esta clase extiende `%Persistent`, lo que permite almacenar instancias de esta clase en la base de datos.
/// Contiene propiedades para representar el nombre, apellido y dirección de una persona.
Class demo2.Persona Extends %Persistent
{

/// Propiedad que almacena el nombre de la persona.
/// 
/// @property Nombre (%String) El nombre de la persona.
Property Nombre As %String;

/// Propiedad que almacena el apellido de la persona.
/// 
/// @property Apellido (%String) El apellido de la persona.
Property Apellido As %String;

/// Propiedad que almacena la dirección de la persona.
/// 
/// @property Direccion (demo2.Direccion) La dirección de la persona, representada como una instancia de la clase `demo2.Direccion`.
Property Direccion As demo2.Direccion;

/// Configuración de almacenamiento predeterminado para la clase.
/// Define cómo se almacenan los datos de esta clase en la base de datos, incluyendo las ubicaciones de los datos,
/// índices, identificadores y streams.
Storage Default
{
<Data name="PersonaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nombre</Value>
</Value>
<Value name="3">
<Value>Apellido</Value>
</Value>
<Value name="4">
<Value>Direccion</Value>
</Value>
</Data>
<DataLocation>^demo2.PersonaD</DataLocation>
<DefaultData>PersonaDefaultData</DefaultData>
<Description>
<![CDATA[Configuración de almacenamiento predeterminado para la clase.
Define cómo se almacenan los datos de esta clase en la base de datos, incluyendo las ubicaciones de los datos,
índices, identificadores y streams.]]></Description>
<IdLocation>^demo2.PersonaD</IdLocation>
<IndexLocation>^demo2.PersonaI</IndexLocation>
<StreamLocation>^demo2.PersonaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
