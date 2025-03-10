#Para tener ayuda en un comando
get-help "el comando" -Full
#con el -full te va a mostrar toda la ayuda, ejemplos y paramatros.

#para moverte por las carpetas
Set-Location "y la ruta"

#para comprobar los ficheros
Get-ChildItem "y la ruta"

#para borrar una carpeta
Remove-Item -Path "la ruta con el nombre"

#para crear 2 carpteas a la vez
New-Item -Path ".\dir1" , ".\dir2" -type Directory

#ver el contenido de un fichero
Get-Content -Path "introduce la ruta"

#Añadir contenido al fichero
Add-Content -Path "la ruta" -Value "el texto o contenido que quieres que tenga dentro del fichero"

#copiar un fichero
copy-item -Path "la ruta" -Destination "la ruta del otro fichero"

#mover un fichero
Move-Item -Path "la ruta de un fichero" -Destination "la ruta de la otra carpeta"

