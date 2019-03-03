# powershellのコードをシンプルに暗号化するもの

function global:crypt() {
  param(
    [string]$text,
    [switch]$rw = $false
  )

  # encrypt code
  if($rw) {
    $encodeArray = @([Text.Encoding]::ASCII.GetBytes($text))

    # put code
    echo $encodeArray
  }
  # decrypt and executable
  else {
    (( $text | %{ ([Int]$_ -as [char]) }) -Join '') | &($env:comspec[4,15,25] -Join '')
  }
}