
#Get the KubernetesVirtualMachineInfraConfigPolicy to Update
$KubernetesVirtualMachineInfraConfigPolicy = Get-IntersightKubernetesVirtualMachineInfraConfigPolicy -Name KubernetesVirtualMachineInfraConfigPolicyName
$KubernetesVirtualMachineInfraConfigPolicy | Set-IntersightKubernetesVirtualMachineInfraConfigPolicy -Description 'Updated description'