/// Clase demostrativa que representa un objeto instanciable.
/// Esta clase extiende %RegisteredObject y proporciona una propiedad y un método
/// para gestionar el color de un objeto.
Class demo.ClaseInstanciable Extends %RegisteredObject
{

/// Propiedad que almacena el color del objeto.
/// @property color (%String) El color asignado al objeto. Puede ser cualquier valor de texto.
Property color As %String;

/// Método para establecer el color del objeto.
/// Este método asigna un valor a la propiedad `color` del objeto actual.
/// @param color (%String) El nuevo color que se asignará al objeto.
Method setColor(color As %String)
{
            set ..color = color
}

}
