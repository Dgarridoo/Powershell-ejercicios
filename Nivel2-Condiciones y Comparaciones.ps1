# Escribe un script que pida un número y diga si es mayor o menor que 10.
write-host "Esto es para decir si un numero es mayor o menor que 10"
$num = read-host "Introduce un numero "

if ($num -is [int] -or $num -is [double]) {
    if( $num -gt 10 ) {
        Write-Host "El numero $num es menor que 10"
    }elseif( $num -lt 10 ) {
        Write-Host "El numero $num es mayor que 10"
    }elseif( $num -eq 10 ) {
        Write-Host "El numero $num es igual que 10"
    }
} else {
    write-host "Debes de introducir un numero entero"
}

#Crea un script que pida un nombre y, si es "Administrador", imprima "Eres el administrador".

$nom = read-host "Introduce tu nombre"

if($nom -eq "Administrador"){
    Write-Host "Eres el Administrador"
}

#Haz un script que verifique si un archivo existe en una carpeta (Test-Path puede ayudarte).

$ar = Read-Host "Introduce la ruta de un fichero ejemplo(C:\Users\TuUsuario\Documents\archivo.txt)"

if(Test-Path $ar){
    Write-Host "El archivo $ar existe"
}else{
    Write-Host "El archivo $ar no existe"
}

#Crea un script que revise si un directorio existe, y si no, lo cree.
$dir = Read-Host "Introduce la ruta de un directorio"

if(-not (Test-Path $dir)){
    #El new-item es para crear ya sea archivos, carpetas oclaves de registro. con -ItemType podemos indicar el tipo de objeto que queremos crear y el -path es para indicar la ruta en donde queremos que se cree.
    New-Item -ItemType Directory -Path $dir
    Write-Host "El directorio $dir no existia y se ha creado"
}else{
    Write-Host "El directorio $dir existe"
}

#Haz un script que verifique si un número es par o impar.
$num = Read-Host "Introduce un numero"

if($num % 2 -eq 0){
    Write-Host "El numero $num es par"
}else {
    Write-Host "El numero $num es impar"
}

