# �P����PowerShell���N�����Ă݂�
$proc = Start-Process -FilePath powershell -PassThru

# �N�������v���Z�X�̃��[�U���m�F����
Get-Process -InputObject $proc -IncludeUserName

# ���̃��[�U�[�����Ńv���Z�X���N������
Start-Process -FilePath powershell -Credential Hoge -PassThru
