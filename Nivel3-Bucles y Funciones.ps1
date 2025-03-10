#Escribe un script que imprima los números del 1 al 10 usando un bucle for.
for ($i = 0; $i -le 10; $i++) {
    Write-Host "Numero: $i"
}

#Haz un script que pida una palabra y la imprima 5 veces con un while.
$palabra = Read-Host "Ingresa una palabra"
$contador = 0

while ($contador -le 5) {
    Write-Output $palabra
    $contador++
}

#Crea una función en PowerShell que reciba un nombre como argumento y diga "Hola, [nombre]".
function saludar($nombre) {
    Write-Host "Hola, $nombre!"
}

$nombreUsuario = Read-Host "Introduce tu nombre"
saludar $nombreUsuario

#Haz un script que calcule la suma de los números del 1 al 100 usando un bucle.
$suma = 0

$i = 1
while ($i -le 100){
    $suma += $i
    $i++
}

Write-Host "La suma de los numeros del 1 al 100 es: $suma"

#Listar todos los archivos de una carpeta
$ruta = Read-Host "Introduce la ruta de una carpeta"
Get-ChildItem -Path $ruta | ForEach-Object {Write-Host $_.Name}

