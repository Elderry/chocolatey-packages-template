$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'internet-download-manager'
    fileType       = 'EXE'
    url            = 'http://mirror2.internetdownloadmanager.com/idman627build2.exe'
    softwareName   = 'Internet Download Manager'
    checksum       = ''
    checksumType   = 'MD5'
    silentArgs     = ''
    validExitCodes = @(0)
}

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe     = 'AutoHotKey'
$ahkFile    = Join-Path $scriptPath 'idmInstall.ahk'
Start-Process -FilePath $ahkExe -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs
