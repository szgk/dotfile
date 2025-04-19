# 書き出したいフォルダパスを指定
$folderPath = "D:\hikky\NewVketAvatarMaker\VketAvatarMaker\Assets\Out\Common\_B"

# 出力ファイル名を指定
$outputFile = "output.csv"

# 対象とする拡張子を指定（例: ".txt"）
$extensionFilter = ".fbx"

# フォルダ内のファイル情報を取得し、フィルタリング
Get-ChildItem -Path $folderPath -File | Where-Object {
    $_.Extension -eq $extensionFilter
} | ForEach-Object {
    [PSCustomObject]@{
        FileName = $_.BaseName # 拡張子を含まないファイル名
        FileSize = "{0:N2} KB" -f ($_.Length / 1KB) # ファイルサイズをKB単位で表示
    }
} | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

Write-Host "拡張子`$extensionFilter`を持つファイルの情報を`$outputFile`に書き出しました（ファイルサイズはKB単位）。"
