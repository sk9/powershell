$modulespath = ($env:psmodulepath -split ";")[0]
$yamlpath = "$modulespath\yaml"

Write-Host "Creating module directory"
New-Item -Type Container -Force -path $yamlpath | out-null

Write-Host "Downloading and installing"
(new-object net.webclient).DownloadString("https://raw.github.com/jfromaniello/pswatch/master/pswatch.psm1") | Out-File "$yamlpath\yaml.psm1" 

Write-Host "Installed!"
Write-Host 'Use "Import-Module yaml"'