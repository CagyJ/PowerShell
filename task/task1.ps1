if($args.Count -eq 1){
    $arr = $args[0].ToCharArray()
    [array]::reverse($arr)
   
    if($args[0] -eq [String]::new($arr)){
        Write-Host "True"
    }else{
        Write-Host "False"
    }
 }else{
    Write-Host "Pls give me a word"
 }