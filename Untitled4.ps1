Copy-Item F:\NanoServer\* C:\Nanoserver -Recurse
Copy-Item F:\Sources\* C:\Nanoserver\Sources\ -Recurse

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

.\Convert-WindowsImage.ps1 -WIM .\NanoServer.wim -VHD .\NanoServer.vhd -DiskType Fixed -VHDFormat VHD -SizeBytes 1GB -Edition 1