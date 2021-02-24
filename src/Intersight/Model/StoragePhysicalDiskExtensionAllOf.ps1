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

Definition of the list of properties defined in 'storage.PhysicalDiskExtension', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Health
The current drive state of disk.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER PhysicalDisk
No description available.
.PARAMETER RegisteredDevice
No description available.
.PARAMETER StorageController
No description available.
.OUTPUTS

StoragePhysicalDiskExtensionAllOf<PSCustomObject>
#>

function Initialize-IntersightStoragePhysicalDiskExtensionAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.PhysicalDiskExtension")]
        [String]
        ${ClassId} = "storage.PhysicalDiskExtension",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("storage.PhysicalDiskExtension")]
        [String]
        ${ObjectType} = "storage.PhysicalDiskExtension",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Health},
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
        ${StorageController}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightStoragePhysicalDiskExtensionAllOf' | Write-Debug
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
            "Health" = ${Health}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDisk" = ${PhysicalDisk}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageController" = ${StorageController}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StoragePhysicalDiskExtensionAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StoragePhysicalDiskExtensionAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StoragePhysicalDiskExtensionAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToStoragePhysicalDiskExtensionAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightStoragePhysicalDiskExtensionAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightStoragePhysicalDiskExtensionAllOf
        $AllProperties = ("ClassId", "ObjectType", "Bootable", "DiskDn", "DiskId", "DiskState", "Health", "InventoryDeviceInfo", "PhysicalDisk", "RegisteredDevice", "StorageController")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Bootable"))) { #optional property not found
            $Bootable = $null
        } else {
            $Bootable = $JsonParameters.PSobject.Properties["Bootable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DiskDn"))) { #optional property not found
            $DiskDn = $null
        } else {
            $DiskDn = $JsonParameters.PSobject.Properties["DiskDn"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "StorageController"))) { #optional property not found
            $StorageController = $null
        } else {
            $StorageController = $JsonParameters.PSobject.Properties["StorageController"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Bootable" = ${Bootable}
            "DiskDn" = ${DiskDn}
            "DiskId" = ${DiskId}
            "DiskState" = ${DiskState}
            "Health" = ${Health}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "PhysicalDisk" = ${PhysicalDisk}
            "RegisteredDevice" = ${RegisteredDevice}
            "StorageController" = ${StorageController}
        }

        return $PSO
    }

}

