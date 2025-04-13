$modules = Get-Content modules.txt
$modules = $modules.Split([Environment]::NewLine)

rm index.rs2f
foreach ($module in $modules) {
	Get-Content $module/module.rs2f | Out-File -Append index.rs2f
}
