$component_meta1 = Initialize-IntersightFirmwareComponentmeta -ClassId 'FirmwareComponentMeta' -ComponentLabel 'BIOS' -IsOobSupported 0

$release1 = Get-IntersightSoftwarerepositoryRelease -Moid '<Replace with Moid>'

$catalog1 = Get-IntersightSoftwarerepositoryCatalog -Moid '<Replace with Moid>'

$distributable_metas1 = Initialize-IntersightFirmwareDistributablemeta -ClassId 'FirmwareDistributableMeta'

$software_appliance_distributable1 = New-IntersightSoftwareApplianceDistributable -ComponentMeta $component_meta1 -Release $release1 -Catalog $catalog1 -DistributableMetas $distributable_metas1 -Name 'software_appliance_distributable1' -Description 'software_appliance_distributable' -Sha512Sum '<sha_512_checksum>' -Size 8485032509 -Model '' -Mdfid '' -Vendor 'Cisco' -SupportedModels @('C240-M5')