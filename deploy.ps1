$base = $PSSCRIPTROOT
$destination = "C:\MineCraft\bedrock-server-latest\development_behavior_packs"

Write-RelaxedIT -logtext """development_behavior_pack""" -ForegroundColor yellow

Remove-item -path $destination -Force -Recurse

New-Item -ItemType Directory $destination
# Get all directories and files excluding .git folders
$items = Get-ChildItem -Path $base -Recurse -Force | Where-Object {
    -not $_.FullName.Contains(".git")
}

foreach ($item in $items) {
    $targetPath = $item.FullName.Replace($base, $destination)
    Write-RelaxedIT $targetPath
    if ($item.PSIsContainer) {
        # Create directory if it doesn't exist
        if (-not (Test-Path $targetPath)) {
            New-Item -ItemType Directory -Path $targetPath | Out-Null
        }
    } else {
        # Copy file
        Copy-Item -Path $item.FullName -Destination $targetPath -Force
    }
}
Write-RelaxedIT -logtext """resource pack""" -ForegroundColor yellow
& ..\development_resource_packs\deploy.ps1

Write-RelaxedIT -logtext "world loaders" -ForegroundColor yellow

copy-item world_behavior_packs.json C:\MineCraft\bedrock-server-latest\worlds\kupfer\
copy-item ..\development_resource_packs\world_resource_packs.json C:\MineCraft\bedrock-server-latest\worlds\kupfer\