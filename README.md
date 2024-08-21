# windows-setup

This is a script to install my most used packages on a new windows environment.

I have two scripts one is using `chocalatey` package manager and the other is default `Winget` package manager

#### Windows on ARM

for arm architecture use the `Winget` because this will install the correct package for the OS architecture

`chocolatey` only supports x86 at the moment

### How to run

1) Download the script
2) Open powershell with admin rights
3) Run `powershell -executionpolicy bypass -File $FULL_PATH\winget-setup.ps1`


### list of packages

https://winget.run/

https://community.chocolatey.org/packages