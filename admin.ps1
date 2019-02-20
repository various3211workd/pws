# 単純にPowerShellを起動してみる
$proc = Start-Process -FilePath powershell -PassThru

# 起動したプロセスのユーザを確認する
Get-Process -InputObject $proc -IncludeUserName

# 他のユーザー権限でプロセスを起動する
Start-Process -FilePath powershell -Credential Hoge -PassThru
