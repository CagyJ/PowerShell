# 4)	Create a Powershell script that needs 3 number parameters. 
# The script should give back all the numbers that can be divided by the first parameter, 
# in the interval starts which the second parameter, ends with the third. E.g: ./generateNumbers 2 1 10 -> 2 4 6 8 10
$num=$args[0]
$begin=$args[1]
$end=$args[2]

for($begin;$begin -le $end;$begin++){
    if($begin%$num -eq 0){
        Write-Host -NoNewline $begin" "
    }
}