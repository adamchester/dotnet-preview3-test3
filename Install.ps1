
mkdir -Force ".\build\" | Out-Null

Invoke-WebRequest "https://raw.githubusercontent.com/dotnet/cli/rel/1.0.0/scripts/obtain/dotnet-install.ps1" -OutFile ".\build\installcli.ps1"

$env:DOTNET_INSTALL_DIR = "$pwd\.dotnetcli"

& .\build\installcli.ps1 -InstallDir "$env:DOTNET_INSTALL_DIR" -NoPath -Version 1.0.0-preview3-003161

$env:Path = "$env:DOTNET_INSTALL_DIR;$env:Path"