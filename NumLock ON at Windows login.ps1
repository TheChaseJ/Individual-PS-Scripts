#Set NumLock ON at Windows login screen
$path = 'HKU:\.DEFAULT\Control Panel\Keyboard\'
$name = 'InitialKeyboardIndicators'
$value = '2'
Set-Itemproperty -Path $path -Name $name -Value $value