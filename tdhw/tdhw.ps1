param($fname)
if($fname -eq $null)
{
    echo "Pls give me a file name"
    $fname=Read-Host
}
if(Test-Path $fname)
{
    $content=get-content $fname
    $line=1
    $even=0
    $odd=0
    for($i=0;$i -le $content.Length;$i++){
        $c=[string]$content[$i]
        #echo $c[2]
        $j=0
        while($j -lt $c.Length){
            $elem=[string]$c[$j]
            $num=[int]$elem
            #$num++ 
            #echo $num
            if($line%2 -eq 0){
                if($num%2 -eq 0){
                    $even+=$num
                }
            }else{
                if($num%2 -eq 1){
                    $odd+=$num
                }
            }
            $j+=2
        }
        
        $line++
    }

    echo "even num of even line: ${even}"
    echo "odd num of odd line: ${odd}"
}
else
{
    echo "No such file"
}