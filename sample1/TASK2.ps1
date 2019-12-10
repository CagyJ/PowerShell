# 2)	Create a Powershell script, which lists the current directory’s items sorted.
# The aspect of sorting should be in the item’s name (n), length (l) or the last write time (d). 
# The user can choose between those aspects by giving an argument. E.g: ./sorteditems.ps1 n
$a=Get-ChildItem
if([char]$args[0] -eq [char]'n'){
    $a | Sort name -Descending
}
elseif([char]$args[0] -eq [char]'l'){
    $a | Sort length
}
elseif([char]$args[0] -eq [char]'d'){
    $a | Sort LastWriteTime
}
