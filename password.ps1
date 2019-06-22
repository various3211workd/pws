function global:Password(){
    Param(
      [parameter(
        Mandatory = $true,
        Position = 0)]
      [Int]$password_value,
      
      [parameter(
        Mandatory = $true,
        Position = 1)]
      [Int]$symbol_value
    )

    Add-type -AssemblyName System.Web;
    [System.Web.Security.Membership]::GeneratePassword($password_value,$symbol_value);
}