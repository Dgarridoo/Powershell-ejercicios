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
    if($op -in 1..4){
        [int]$num1 = read-host "introduce el 1º numero"
        [int]$num = read-host "Introduce el 2º numero"
    }
switch ($op)
{
    '1'{clear-host
        $tot= $num1 + $num
        Write-Host "La suma de los numeros  $num1 y $num es $tot" }

    '2'{clear-host
         $tot= $num1 - $num
         Write-Host "La resta de los numeros  $num1 y $num es $tot" }

    '3'{clear-host
        $tot= $num1 * $num
        Write-Host "La multiplicacion de los numeros  $num1 y $num es $tot" }


    '4'{clear-host
            if($num -eq 0){
            write-host "No se puede dividir entre 0"
            }else{
            $tot= $num1 / $num
            Write-Host "La division de los numeros  $num1 y $num es $tot" }
        }
        
    '5' { read-host "Pulsa una tecla para cerrar"
        Clear-Host}

    Default {{Write-Host "Debes de introducir una opcion correcta"}}
}    
}until($op -eq 5)


#Programa que le des una carpeta y te cuente los txt

$carpeta = Read-Host "Introduce la carpeta"
$archivos = Get-ChildItem $carpeta -Recurse -Include *.txt
$cont = 0
foreach($archivo in $archivos){
    $cont++
}
write-host "Hay $cont archivos txt en la carpeta $carpeta"

#El usuario comprueba un usuario, si existe que te lo diga si no existe pues te lo crea

$usuario = Read-Host "Introduce el nombre de usuario"
if(Get-LocalUser $usuario){
    Write-Host "El usuario $usuario existe"
}else{
    New-LocalUser -name $usuario -NoPassword -FullName $usuario
    write-host "El usuario $usuario ha sido creado"
}

#numeros pares del 0 al 100

for ($i = 0; $i -lt 101; $i++)
{
    $tot= $i % 2
    if ($tot -eq 0){
        write-host "$i es par"
    }
}

#numeros pares que tu le introduzcas por consola
[int]$num=read-host "Introduce un numero inicial"
[int]$num1=read-host "Introduce un numero final"

if ($num -lt $num1) {
    for ($i = $num; $i -le $num1; $i++)
    {
        $tot= $i % 2
        if ($tot -eq 0){
            write-host "$i es par"
        }
    }
} else{
    Write-Host "$num tiene que ser menor que $num1"
}

#Programa que me pida un numero de usuarios. A partir de este momneto solicitara n usuarios. Por cada uno de ellos comprobara que el usuario existe en el sistema.
#Nota: Si el usuario no existe no debe de mostrar ningun error.
$useri=@()
[int]$usu=read-host "Introduce un numero de usuarios"
for($i = 1; $i -le $usu; $i++){
    $user=read-host "Introduce el usuario"$i
   
    $useri+=$user
}
foreach($user in $useri){
    $dir=Get-LocalUser $user -ErrorAction SilentlyContinue
    if($dir){
        write-host "El usuario $user existe"
    }
}

#Crear un fichero con direccines ip
New-Item -Path .\Desktop -name direcciones.txt -Type File -Value "192.168.1.1"
Get-Content .\Desktop\direcciones.txt
Add-Content -pass .\Desktop\direcciones.txt -Value "8.8.8.8"
Test-Connection -IPAddress 192.168.12.9 -count 1

#comprobar que las direcciones ip que le introduzcamos tiene o no conexxion

$ip= Get-Content .\Desktop\direcciones.txt
foreach ($ips in $ip){
    if(Test-Connection -IPAddress $ips -Count 1 -Quiet){
        Write-Host "La ip $ips existe"
    }else{
        Write-Host "La ip no $ips existe"
    }
}

