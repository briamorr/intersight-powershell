
#Get the HyperflexClusterStoragePolicy to Update
$HyperflexClusterStoragePolicy = Get-IntersightHyperflexClusterStoragePolicy -Name HyperflexClusterStoragePolicyName
$HyperflexClusterStoragePolicy | Set-IntersightHyperflexClusterStoragePolicy -Description 'Updated description'
