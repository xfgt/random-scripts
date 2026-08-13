$cookie = "MoodleSession=b6askdp4bfgsd6mfmf3svn1nlm"
$urls = Get-Content .\mreji\urls.txt

$cnt = 0
foreach ($url in $urls) {
    Write-Host "Свалям: $url"
    # Използваме вградения curl (alias на Invoke-WebRequest) с нужния хедър
    curl -Uri $url -Headers @{ "Cookie" = $cookie } -UserAgent "Mozilla/5.0" -OutFile "file_$($cnt)"
    Start-Sleep -Seconds 2
    $cnt++
}


<#
проблеми:
не се чете файла, няма file extension,дори pdf и да се добави пак не става - счупен файл


Какво да добавим:

начин за разбиране на типа на файла и конкатенация към крайното име
направи нова папка с файловете, като заглавието вземи допълнително името на курса и го сложи за заглавие на папката


href link, pdf, doc(x), xlsx, ppt, pptx


#>