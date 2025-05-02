/// <summary>
/// This is a demo class for the purpose of this example.
Class demo.PrimeraClase
{

/// declaración de un método
ClassMethod prueba()
{
        Write "Hola Mundo"
}

/// declaración de un método tipo función	
ClassMethod fcSaludos(nombre As %String) As %String
{
        return "Hola " _ nombre_" desde la clase PrimeraClase"
}

/// Invocar la función fcSaludos desde terminal
/// Ejemplo: USER>set resultado = ##class(demo.PrimeraClase).fcSaludos("Juan")
///          USER>write resultado
/// Invocar el método prueba desde terminal
/// Ejemplo: USER>do ##class(demo.PrimeraClase).prueba()

}
