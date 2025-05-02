/// Clase que representa a un empleado en una organización.
/// 
/// Esta clase extiende `demo2.Persona` y proporciona propiedades adicionales para representar el cargo,
/// el responsable directo y el departamento al que pertenece el empleado.
Class demo2.Empleado Extends demo2.Persona
{

/// Propiedad que almacena el cargo del empleado.
/// 
/// @property Cargo (%String) El cargo o puesto que ocupa el empleado en la organización.
Property Cargo As %String;

/// Propiedad que representa al responsable directo del empleado.
/// 
/// @property Responsable (demo2.Persona) La persona que supervisa o es responsable del empleado.
Property Responsable As demo2.Persona;

/// Relación que define la conexión entre un empleado y su departamento.
/// 
/// Esta relación indica que un empleado pertenece a un solo departamento (`Cardinality = one`) y está vinculada
/// a la propiedad inversa `Empleados` en la clase `demo2.Departamento`.
/// 
/// @relationship Departamento (demo2.Departamento) El departamento al que pertenece el empleado.
Relationship Departamento As demo2.Departamento [ Cardinality = one, Inverse = Empleados ];

/// Configuración de almacenamiento predeterminado para la clase.
/// Define cómo se almacenan los datos de esta clase en la base de datos, incluyendo las ubicaciones de los datos,
/// índices, identificadores y streams.
Storage Default
{
<Data name="EmpleadoDefaultData">
<Subscript>"Empleado"</Subscript>
<Value name="1">
<Value>Cargo</Value>
</Value>
<Value name="2">
<Value>Responsable</Value>
</Value>
<Value name="3">
<Value>Departamento</Value>
</Value>
</Data>
<DefaultData>EmpleadoDefaultData</DefaultData>
<Description>
<![CDATA[Configuración de almacenamiento predeterminado para la clase.
Define cómo se almacenan los datos de esta clase en la base de datos, incluyendo las ubicaciones de los datos,
índices, identificadores y streams.]]></Description>
<Type>%Storage.Persistent</Type>
}

}
