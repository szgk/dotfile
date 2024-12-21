# 複製するフォルダ
$originalFolder = 1

# 複製するフォルダパス
$sourceFolder = ""
Write-Host "sourceFolder $sourceFolder"

# 複製先の親フォルダ
$destinationParent = ""

# 作成するフォルダ数
$folderCount = 50

# フォルダを複製
for ($i = 1; $i -le $folderCount; $i++) {
    $filename = $originalFolder + $i
    Write-Host "filename $filename"
    $destinationFolder = Join-Path -Path $destinationParent -ChildPath $filename
    Write-Output $destinationFolder
    Copy-Item -Path $sourceFolder -Destination $destinationFolder -Recurse
    Write-Host "Copied to $destinationFolder"
}
