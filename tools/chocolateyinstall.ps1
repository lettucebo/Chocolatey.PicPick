$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'PicPick'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "picpick.5.0.2.exe"

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'
    file           = $fileLocation
    silentArgs     = "/S"
    validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs