#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Physical Disk on the enclosure.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Var0ClusterReplicationNetworkPolicy
No description available.
.PARAMETER Parent
No description available.
.PARAMETER BlockSize
The block size of the physical disk in bytes.
.PARAMETER DiskId
This field represents the disk Id in the storage enclosure.
.PARAMETER DiskState
This field identifies the current disk configuration applied in the physical disk.
.PARAMETER Health
The current health state of the enclosure disk.
.PARAMETER NumBlocks
The number of blocks present on the physical disk.
.PARAMETER SasAddress1
This field identifies the SAS address assigned to the disk SAS port-1.
.PARAMETER SasAddress2
This field identifies the SAS address assigned to the disk SAS port-2.
.PARAMETER Size
The size of the physical disk in MB.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER PhysicalDisk
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageEnclosure
No description available.
.OUTPUTS

StorageEnclosureDisk<PSCustomObject>
#>

function Initialize-IntersightStorageEnclosureDisk {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.EnclosureDisk")]
        [String]
        ${ClassId} = "storage.EnclosureDisk",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.EnclosureDisk")]
        [String]
        ${ObjectType} = "storage.EnclosureDisk",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var0ClusterReplicationNetworkPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BlockSize},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiskId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiskState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Health},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NumBlocks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SasAddress1},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SasAddress2},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Size},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PhysicalDisk},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageEnclosure}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStorageEnclosureDisk' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Parent" = ${Parent}
            "BlockSize" = ${BlockSize}
            "DiskId" = ${DiskId}
            "DiskState" = ${DiskState}
            "Health" = ${Health}
            "NumBlocks" = ${NumBlocks}
            "SasAddress1" = ${SasAddress1}
            "SasAddress2" = ${SasAddress2}
            "Size" = ${Size}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDisk" = ${PhysicalDisk}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageEnclosure" = ${StorageEnclosure}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageEnclosureDisk<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageEnclosureDisk<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageEnclosureDisk<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStorageEnclosureDisk {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStorageEnclosureDisk' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStorageEnclosureDisk
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "DeviceMoId", "Dn", "Rn", "Model", "Revision", "Serial", "Vendor", "BlockSize", "DiskId", "DiskState", "Health", "NumBlocks", "Pid", "SasAddress1", "SasAddress2", "Size", "InventoryDeviceInfo", "PhysicalDisk", "RegisteredDevice", "StorageEnclosure")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ClassId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClassId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ClassId' missing."
        } else {
            $ClassId = $JsonParameters.PSobject.Properties["ClassId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ObjectType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ObjectType' missing."
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["ObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_ClusterReplicationNetworkPolicy"))) { #optional property not found
            $Var0ClusterReplicationNetworkPolicy = $null
        } else {
            $Var0ClusterReplicationNetworkPolicy = $JsonParameters.PSobject.Properties["_0_ClusterReplicationNetworkPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceMoId"))) { #optional property not found
            $DeviceMoId = $null
        } else {
            $DeviceMoId = $JsonParameters.PSobject.Properties["DeviceMoId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Dn"))) { #optional property not found
            $Dn = $null
        } else {
            $Dn = $JsonParameters.PSobject.Properties["Dn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Rn"))) { #optional property not found
            $Rn = $null
        } else {
            $Rn = $JsonParameters.PSobject.Properties["Rn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["Model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Revision"))) { #optional property not found
            $Revision = $null
        } else {
            $Revision = $JsonParameters.PSobject.Properties["Revision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Serial"))) { #optional property not found
            $Serial = $null
        } else {
            $Serial = $JsonParameters.PSobject.Properties["Serial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["Vendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BlockSize"))) { #optional property not found
            $BlockSize = $null
        } else {
            $BlockSize = $JsonParameters.PSobject.Properties["BlockSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskId"))) { #optional property not found
            $DiskId = $null
        } else {
            $DiskId = $JsonParameters.PSobject.Properties["DiskId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskState"))) { #optional property not found
            $DiskState = $null
        } else {
            $DiskState = $JsonParameters.PSobject.Properties["DiskState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Health"))) { #optional property not found
            $Health = $null
        } else {
            $Health = $JsonParameters.PSobject.Properties["Health"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumBlocks"))) { #optional property not found
            $NumBlocks = $null
        } else {
            $NumBlocks = $JsonParameters.PSobject.Properties["NumBlocks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["Pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SasAddress1"))) { #optional property not found
            $SasAddress1 = $null
        } else {
            $SasAddress1 = $JsonParameters.PSobject.Properties["SasAddress1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SasAddress2"))) { #optional property not found
            $SasAddress2 = $null
        } else {
            $SasAddress2 = $JsonParameters.PSobject.Properties["SasAddress2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["Size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PhysicalDisk"))) { #optional property not found
            $PhysicalDisk = $null
        } else {
            $PhysicalDisk = $JsonParameters.PSobject.Properties["PhysicalDisk"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageEnclosure"))) { #optional property not found
            $StorageEnclosure = $null
        } else {
            $StorageEnclosure = $JsonParameters.PSobject.Properties["StorageEnclosure"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccountMoid" = ${AccountMoid}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "DeviceMoId" = ${DeviceMoId}
            "Dn" = ${Dn}
            "Rn" = ${Rn}
            "Model" = ${Model}
            "Revision" = ${Revision}
            "Serial" = ${Serial}
            "Vendor" = ${Vendor}
            "BlockSize" = ${BlockSize}
            "DiskId" = ${DiskId}
            "DiskState" = ${DiskState}
            "Health" = ${Health}
            "NumBlocks" = ${NumBlocks}
            "Pid" = ${VarPid}
            "SasAddress1" = ${SasAddress1}
            "SasAddress2" = ${SasAddress2}
            "Size" = ${Size}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDisk" = ${PhysicalDisk}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageEnclosure" = ${StorageEnclosure}
        }

        return $PSO
    }

}

