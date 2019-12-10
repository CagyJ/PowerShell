# 3)	Create a PowerShell script, which reads a text file at the beginning. 
# In the text file, we have 2 words separated by coma. 
# Put the content of this file into an associative array as the first words are the keys, the second words are the values. 
# After the script should ask for a word from the user and writes out the value of that key in the array. (add an input file to your work, and change the name in the code)

$i=@{}
$file = Get-Content .\test1.txt

#$file=Read-Host -Prompt "Enter file"
#while (!(Test-Path $file)){
#    $file=Read-Host -Prompt "Error! $filename does not exist, try again"
#}
foreach ($line in $file)
{
    $part=$line.split(",")
    $i.($part[0])=$part[1]
}
$key = Read-Host  "Give a Key"
Write-Host $i.$key
