
#Get the CapabilityFanModuleManufacturingDef to Update
$CapabilityFanModuleManufacturingDef = Get-IntersightCapabilityFanModuleManufacturingDef -Name CapabilityFanModuleManufacturingDefName
$CapabilityFanModuleManufacturingDef | Set-IntersightCapabilityFanModuleManufacturingDef -Description 'Updated description'
