#Crea un script que te imprima "Hola, mundo" en la terminal.
Write-Host "Hola, mundo"

#Declara una variable llamada $nombre, asignale tu nombre y luego imprímela.
$nombre = "Daniel"
Write-Host $nombre

#Pide al usuario que ingrese su edad y guardala en una variable. Luego, imprime un mensaje que te diga: "Tienes X años"
$num = Read-Host "Porfavor introduce tu edad: "
Write-Host "Tienes $num años"

#Escribe un script que muestre la fecha y hora actual usando Get-Date.
$fecha = Get-Date
Write-Host "La fecha actual es: $fecha" 

#Escribe un script que muestre el nombre del usuario actual usando whoami o $env:UserName.
$usu = $env:UserName
Write-Host "El usuario actual que estas utilizando es $usu"

#El comando write-host sirve para que te muestre por pantalla de la consola el contenido que le pongas.
write-host "Ejemplo"

#Para declarar una variable es tan secillo como poner $ y el nombre que le quieras poner en la variable. despues un = y ya ahi puedes poner otro comando o entre comillas dobles un texto.
$ejemplo1 = "Hola"
Write-Host $ejemplo1

$ejemplo = Get-Date
Write-Host $ejemplo

#Para que el usuario tenga introducir un valor por consola solo tendriamos que utilizar el comando read-host y entre comillas dobles el texto que quieres que se le muestre por pantalla.
Read-Host "Introduce algo: "
