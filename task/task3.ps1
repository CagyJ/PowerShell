$N=[int]$args[0]

for($i=1;$i -le $N;$i++){
    $fact=1
    for($j=1;$j -le $i;$j++){
        $fact*=$j   
    }
    Write-Host -NoNewline $fact";"
}