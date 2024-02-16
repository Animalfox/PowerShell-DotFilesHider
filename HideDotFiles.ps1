# Get the list of all files and folders on drive C:
$items = Get-ChildItem -Path C:\ -Recurse

# Iterate through each item
foreach ($item in $items) {
    # Check if the item name starts with a dot
    if ($item.Name.StartsWith(".")) {
        # Hide the item using file attributes
        $item.Attributes = "Hidden"
        Write-Host "Hidden item: $($item.FullName)"
    }
}
