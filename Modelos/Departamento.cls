/// Clase que representa un departamento en una organización.
/// 
/// Esta clase extiende `%Persistent` y proporciona una estructura para almacenar información sobre departamentos,
/// incluyendo su nombre y una relación con los empleados que pertenecen al departamento.
Class demo2.Departamento Extends %Persistent
{

/// Propiedad que almacena el nombre del departamento.
/// 
/// @property Nombre (%String) El nombre del departamento.
Property Nombre As %String;

/// Relación que define la conexión entre un departamento y sus empleados.
/// 
/// Esta relación indica que un departamento puede tener muchos empleados (`Cardinality = many`) y está vinculada
/// a la propiedad inversa `Departamento` en la clase `demo2.Empleado`.
/// 
/// @relationship Empleados (demo2.Empleado) Representa los empleados que pertenecen al departamento.
Relationship Empleados As demo2.Empleado [ Cardinality = many, Inverse = Departamento ];

/// Configuración de almacenamiento predeterminado para la clase.
/// Define cómo se almacenan los datos de esta clase en la base de datos, incluyendo las ubicaciones de los datos,
/// índices, identificadores y streams.
Storage Default
{
<Data name="DepartamentoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nombre</Value>
</Value>
</Data>
<DataLocation>^demo2.DepartamentoD</DataLocation>
<DefaultData>DepartamentoDefaultData</DefaultData>
<Description>
<![CDATA[Configuración de almacenamiento predeterminado para la clase.
Define cómo se almacenan los datos de esta clase en la base de datos, incluyendo las ubicaciones de los datos,
índices, identificadores y streams.]]></Description>
<IdLocation>^demo2.DepartamentoD</IdLocation>
<IndexLocation>^demo2.DepartamentoI</IndexLocation>
<StreamLocation>^demo2.DepartamentoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
