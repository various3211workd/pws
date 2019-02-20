<#param(
    [Parameter(
        Mandatory=$True,
        HelpMessage='文字列'
	)]
    [string]$text,
    [Parameter(
        Mandatory=$True,
        HelpMessage='回数'
	)]
    [int]$kaisu
)
#>
$kaisu = 2

$text = "0f242e412b34212e3d65501c2d7e597f47395c0751675a2b13567d5f3c7b6a1d70540a684d604759"
#$text = "CRZANFZSAQ3QMF3XWQTBONSTGMS7I52TKNJBNZTX2==="

for( $i = 0 ; $i -lt $kaisu ; $i++){
    $text = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($text))
}

echo $text