#1)	Create a Powershell script which gets three words as parameters and writes out the longest of them to the screen!
# Check whether you get three parameters or not – if not, read from console:
if ($args.Length -ne 3)
{
    Write-Output "You need 3 parameters: "
    $a= @(0..2)
    for($i=0; $i -lt 3; $i++){
        $a[$i]=Read-Host
    }

    $longest=$a[0]

    for($i=1; $i -lt 3; $i++){
    if($a[$i].Length -gt $longest.Length){
        $longest=$a[$i]
        }
    }
    $longest
}
else {
    $longest=$args[0]
    for($i=1; $i -lt 3; $i++){
        if($args[$i].length -gt $longest.length){
            $longest=$args[$i]
            }
        }
    $longest
    }
