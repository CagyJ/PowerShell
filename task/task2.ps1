$content=Get-Content .\test.txt
$cnt=0
foreach($line in $content){
    for($i=0;$i -lt $line.length;$i++){
        if($line[$i] -ne " " ){
            $cnt++
        }
    }
}
$cnt