
#Get the FirmwareStorageControllerDescriptor to delete
$FirmwareStorageControllerDescriptor = Get-IntersightFirmwareStorageControllerDescriptor -Name FirmwareStorageControllerDescriptorName
$FirmwareStorageControllerDescriptor | Remove-IntersightFirmwareStorageControllerDescriptor

#Remove the FirmwareStorageControllerDescriptor by Moid.
Remove-IntersightFirmwareStorageControllerDescriptor -Moid '<Replace with Moid>'
