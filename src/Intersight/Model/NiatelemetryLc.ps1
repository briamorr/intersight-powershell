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

Object is available at Line Card scope.

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
.PARAMETER Description
Description of the line cards present.
.PARAMETER Dn
Dn value for the line cards present.
.PARAMETER HardwareVersion
Hardware version of the line cards present.
.PARAMETER Model
Model of the line cards present.
.PARAMETER OperationalState
Opretaional state of the line cards present.
.PARAMETER PowerState
Power state of the line cards present.
.PARAMETER RecordType
Type of record DCNM / APIC / SE. This determines the type of platform where inventory was collected.
.PARAMETER RecordVersion
Version of record being pushed. This determines what was the API version for data available from the device.
.PARAMETER RedundancyState
Redundancy state of the line cards present.
.PARAMETER SerialNumber
Serial number of the line card present.
.PARAMETER SiteName
The Site name represents an APIC cluster. Service Engine can onboard multiple APIC clusters / sites.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

NiatelemetryLc<PSCustomObject>
#>

function Initialize-IntersightNiatelemetryLc {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.Lc")]
        [String]
        ${ClassId} = "niatelemetry.Lc",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.Lc")]
        [String]
        ${ObjectType} = "niatelemetry.Lc",
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
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Dn},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HardwareVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Model},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperationalState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PowerState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RecordType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RecordVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RedundancyState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SiteName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiatelemetryLc' | Write-Debug
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
            "Description" = ${Description}
            "Dn" = ${Dn}
            "HardwareVersion" = ${HardwareVersion}
            "Model" = ${Model}
            "OperationalState" = ${OperationalState}
            "PowerState" = ${PowerState}
            "RecordType" = ${RecordType}
            "RecordVersion" = ${RecordVersion}
            "RedundancyState" = ${RedundancyState}
            "SerialNumber" = ${SerialNumber}
            "SiteName" = ${SiteName}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiatelemetryLc<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiatelemetryLc<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiatelemetryLc<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiatelemetryLc {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiatelemetryLc' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiatelemetryLc
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "Description", "Dn", "HardwareVersion", "Model", "OperationalState", "PowerState", "RecordType", "RecordVersion", "RedundancyState", "SerialNumber", "SiteName", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Dn"))) { #optional property not found
            $Dn = $null
        } else {
            $Dn = $JsonParameters.PSobject.Properties["Dn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HardwareVersion"))) { #optional property not found
            $HardwareVersion = $null
        } else {
            $HardwareVersion = $JsonParameters.PSobject.Properties["HardwareVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["Model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperationalState"))) { #optional property not found
            $OperationalState = $null
        } else {
            $OperationalState = $JsonParameters.PSobject.Properties["OperationalState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PowerState"))) { #optional property not found
            $PowerState = $null
        } else {
            $PowerState = $JsonParameters.PSobject.Properties["PowerState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RecordType"))) { #optional property not found
            $RecordType = $null
        } else {
            $RecordType = $JsonParameters.PSobject.Properties["RecordType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RecordVersion"))) { #optional property not found
            $RecordVersion = $null
        } else {
            $RecordVersion = $JsonParameters.PSobject.Properties["RecordVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RedundancyState"))) { #optional property not found
            $RedundancyState = $null
        } else {
            $RedundancyState = $JsonParameters.PSobject.Properties["RedundancyState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SerialNumber"))) { #optional property not found
            $SerialNumber = $null
        } else {
            $SerialNumber = $JsonParameters.PSobject.Properties["SerialNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SiteName"))) { #optional property not found
            $SiteName = $null
        } else {
            $SiteName = $JsonParameters.PSobject.Properties["SiteName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
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
            "Description" = ${Description}
            "Dn" = ${Dn}
            "HardwareVersion" = ${HardwareVersion}
            "Model" = ${Model}
            "OperationalState" = ${OperationalState}
            "PowerState" = ${PowerState}
            "RecordType" = ${RecordType}
            "RecordVersion" = ${RecordVersion}
            "RedundancyState" = ${RedundancyState}
            "SerialNumber" = ${SerialNumber}
            "SiteName" = ${SiteName}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

