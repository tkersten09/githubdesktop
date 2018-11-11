
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://central.github.com/deployments/desktop/desktop/latest/win32'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  file         = $toolsDir + '\GitHubDesktopSetup.exe'

  softwareName  = 'githubdesktop*'

  checksum      = 'D52278949149C38ED64CDCD3651EE84BB4DA8FCBA4C39F8AD9BCF68F4228E95A'
  checksumType  = 'sha256'

  silentArgs   = '--silent'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








