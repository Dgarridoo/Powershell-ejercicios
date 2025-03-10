#Ejercicio de comparacion de edades
Clear-Host
[int]$edad = Read-Host "Introduce tu edad, manuel"
[int]$edad1 = Read-Host "Introduce tu edad jose"

if($edad -gt $edad1){
    write-host "Manuel es mayor que Jose."
}elseif ($edad -lt $edad1) {
    write-host "Jose es mayor que Manuel"
}
else{
    write-host "Jose y Manuel tienen la misma edad"
}

#Eejercicio que introduzca 3 numeros y que indique cual es el mayor
[int]$1 = read-host "Introduce 1 numero"
[int]$2 = read-host "Introduce 1 numero"
[int]$3 = read-host "Introduce 1 numero"

$mayor=$1
if($2 -gt $mayor){
    $mayor=$2
}elseif($3 -gt $mayor){
    $mayor=$3
}
write-host "$mayor es el mayor de los 3"

#menu
do{
write-host "1. opcion 1"
write-host "2. opcion 2"
write-host "3. opcion 3"
write-host "4. opcion 4"
$op=read-host "Introduce un valor"

switch ($op)
{
    '1' {write-host "op1"}
    '2' {write-host "op2"}
    '3' {write-host "op3"}
    '4' {write-host "op4"}
    Default {{write-host "no es una opcion correcta"}}
}
} until($op -eq 4)


#Calculadora 

do{
    write-host "1. Suma"
    write-host "2. Resta"
    write-host "3. Multiplicación"
    write-host "4. Division" 
    Write-Host "5. Exit"
    [int]$op = Read-Host "Introduce una opcion"

switch ($op)
{
    '1'{[int]$num1 = read-host "introduce el 1º numero"
        [int]$num = read-host "Introduce el 2º numero"
        $tot= $num1 + $num
        Write-Host "La suma de los numeros  $num1 y $num es $tot" }

    '2'{[int]$num1 = read-host "introduce el 1º numero"
        [int]$num = read-host "Introduce el 2º numero"
         $tot= $num1 - $num
         Write-Host "La resta de los numeros  $num1 y $num es $tot" }

    '3'{[int]$num1 = read-host "introduce el 1º numero"
        [int]$num = read-host "Introduce el 2º numero"
        $tot= $num1 * $num
        Write-Host "La multiplicacion de los numeros  $num1 y $num es $tot" }


    '4'{[int]$num1 = read-host "introduce el 1º numero"
        [int]$num = read-host "Introduce el 2º numero"
            if($num -eq 0){
            write-host "No se puede dividir entre 0"
            }else{
            $tot= $num1 / $num
            Write-Host "La division de los numeros  $num1 y $num es $tot" }
        }
        
    '5' {Clear-Host}

    Default {{Write-Host "Debes de introducir una opcion correcta"}}
}
}until($op -eq 5)