$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/kiritsuapp/kiritsu-releases/releases/download/v__VERSION__/Kiritsu___VERSION___x64-setup.exe'
  checksum64     = '__CHECKSUM__'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
