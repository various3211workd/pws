function global:make_password(){
    Add-Type -AssemblyName System.Web;[System.Web.Security.Membership]::GeneratePassword(10,3)
}