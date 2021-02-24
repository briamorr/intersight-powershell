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

Definition of the list of properties defined in 'memory.PersistentMemoryNamespace', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER InventoryDeviceInfo
No description available.
.PARAMETER MemoryPersistentMemoryRegion
No description available.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

MemoryPersistentMemoryNamespaceAllOf<PSCustomObject>
#>

function Initialize-IntersightMemoryPersistentMemoryNamespaceAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("memory.PersistentMemoryNamespace")]
        [String]
        ${ClassId} = "memory.PersistentMemoryNamespace",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("memory.PersistentMemoryNamespace")]
        [String]
        ${ObjectType} = "memory.PersistentMemoryNamespace",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InventoryDeviceInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MemoryPersistentMemoryRegion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightMemoryPersistentMemoryNamespaceAllOf' | Write-Debug
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
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "MemoryPersistentMemoryRegion" = ${MemoryPersistentMemoryRegion}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MemoryPersistentMemoryNamespaceAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to MemoryPersistentMemoryNamespaceAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MemoryPersistentMemoryNamespaceAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToMemoryPersistentMemoryNamespaceAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightMemoryPersistentMemoryNamespaceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightMemoryPersistentMemoryNamespaceAllOf
        $AllProperties = ("ClassId", "ObjectType", "Capacity", "HealthState", "LabelVersion", "Mode", "Name", "Uuid", "InventoryDeviceInfo", "MemoryPersistentMemoryRegion", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Capacity"))) { #optional property not found
            $Capacity = $null
        } else {
            $Capacity = $JsonParameters.PSobject.Properties["Capacity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HealthState"))) { #optional property not found
            $HealthState = $null
        } else {
            $HealthState = $JsonParameters.PSobject.Properties["HealthState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "LabelVersion"))) { #optional property not found
            $LabelVersion = $null
        } else {
            $LabelVersion = $JsonParameters.PSobject.Properties["LabelVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["Mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["Uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InventoryDeviceInfo"))) { #optional property not found
            $InventoryDeviceInfo = $null
        } else {
            $InventoryDeviceInfo = $JsonParameters.PSobject.Properties["InventoryDeviceInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MemoryPersistentMemoryRegion"))) { #optional property not found
            $MemoryPersistentMemoryRegion = $null
        } else {
            $MemoryPersistentMemoryRegion = $JsonParameters.PSobject.Properties["MemoryPersistentMemoryRegion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Capacity" = ${Capacity}
            "HealthState" = ${HealthState}
            "LabelVersion" = ${LabelVersion}
            "Mode" = ${Mode}
            "Name" = ${Name}
            "Uuid" = ${Uuid}
            "InventoryDeviceInfo" = ${InventoryDeviceInfo}
            "MemoryPersistentMemoryRegion" = ${MemoryPersistentMemoryRegion}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

