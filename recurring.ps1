$foo = "bcdefgaaaaddddcccbbbb"
  
$hh = $foo.ToCharArray() | group -NoElement
$ourChar = $hh[0].Name
$ourIndex = $foo.Length+1

for($i=0;$i-le $hh.length-1;$i++){
	if ($hh[$i].Count -gt 1){
		$thisIndex = $foo.IndexOf($hh[$i].Name,$foo.IndexOf($hh[$i].Name)+1)
		if ($thisIndex -lt $ourIndex){
			$ourIndex = $thisIndex
			$ourChar = $hh[$i].Name	
		} 
	}
}
$ourChar
