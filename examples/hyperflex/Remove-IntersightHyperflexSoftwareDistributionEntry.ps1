
#Get the HyperflexSoftwareDistributionEntry to delete
$HyperflexSoftwareDistributionEntry = Get-IntersightHyperflexSoftwareDistributionEntry -Name HyperflexSoftwareDistributionEntryName
$HyperflexSoftwareDistributionEntry | Remove-IntersightHyperflexSoftwareDistributionEntry

#Remove the HyperflexSoftwareDistributionEntry by Moid.
Remove-IntersightHyperflexSoftwareDistributionEntry -Moid '<Replace with Moid>'
