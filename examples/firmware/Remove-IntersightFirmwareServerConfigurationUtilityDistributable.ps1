
#Get the FirmwareServerConfigurationUtilityDistributable to delete
$FirmwareServerConfigurationUtilityDistributable = Ge-IntersightFirmwareServerConfigurationUtilityDistributable -Name FirmwareServerConfigurationUtilityDistributableName
$FirmwareServerConfigurationUtilityDistributable | Remove-IntersightFirmwareServerConfigurationUtilityDistributable

#Remove the FirmwareServerConfigurationUtilityDistributable by Moid.
Remove-IntersightFirmwareServerConfigurationUtilityDistributable -Moid '<Replace with Moid>'
