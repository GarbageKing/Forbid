sc start AppIDSvc 
sc config AppIDSvc start= auto
powershell -command "& {Set-ExecutionPolicy Remotesigned}"
powershell -file blockmail.ps1
powershell -command "& {Set-ExecutionPolicy Restricted}"