/// Clase que representa una dirección postal.
/// 
/// Esta clase extiende `%SerialObject`, lo que permite que sus propiedades sean almacenadas como parte de otro objeto serializado.
/// Contiene propiedades para representar la calle, código postal, localidad y provincia de una dirección.
Class demo2.Direccion Extends %SerialObject
{

/// Propiedad que almacena el nombre de la calle.
/// 
/// @property Calle (%String) El nombre de la calle de la dirección.
Property Calle As %String;

/// Propiedad que almacena el código postal.
/// 
/// @property CodigoPostal (%String) El código postal de la dirección.
Property CodigoPostal As %String;

/// Propiedad que almacena la localidad.
/// 
/// @property Localidad (%String) La localidad o ciudad de la dirección.
Property Localidad As %String;

/// Propiedad que almacena la provincia.
/// 
/// @property Provincia (%String) La provincia o estado de la dirección.
Property Provincia As %String;

/// Configuración de almacenamiento predeterminado para la clase.
/// Define cómo se almacenan los datos de esta clase en la base de datos cuando se utiliza como parte de un objeto serializado.
Storage Default
{
<Data name="DireccionState">
<Value name="1">
<Value>Calle</Value>
</Value>
<Value name="2">
<Value>CodigoPostal</Value>
</Value>
<Value name="3">
<Value>Localidad</Value>
</Value>
<Value name="4">
<Value>Provincia</Value>
</Value>
</Data>
<Description>
<![CDATA[Configuración de almacenamiento predeterminado para la clase.
Define cómo se almacenan los datos de esta clase en la base de datos cuando se utiliza como parte de un objeto serializado.]]></Description>
<State>DireccionState</State>
<StreamLocation>^demo2.DireccionS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
