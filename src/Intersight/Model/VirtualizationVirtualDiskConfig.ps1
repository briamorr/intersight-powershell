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

Virtual disk file information.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Capacity
Disk capacity to be provided with units example - 10Gi.
.PARAMETER Mode
File mode of the disk, example - Filesystem, Block. * `Block` - It is a Block virtual disk. * `Filesystem` - It is a File system virtual disk.
.PARAMETER Name
Name of the virtual disk.
.PARAMETER SourceCerts
Base64 encoded CA certificates of the https source to check against.
.PARAMETER SourceDiskToClone
Source disk name from where the clone is done.
.PARAMETER SourceFilePath
Disk image source for the virtual machine.
.OUTPUTS

VirtualizationVirtualDiskConfig<PSCustomObject>
#>

function Initialize-IntersightVirtualizationVirtualDiskConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("virtualization.VirtualDiskConfig")]
        [String]
        ${ClassId} = "virtualization.VirtualDiskConfig",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("virtualization.VirtualDiskConfig")]
        [String]
        ${ObjectType} = "virtualization.VirtualDiskConfig",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Capacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Block", "Filesystem")]
        [String]
        ${Mode} = "Block",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceCerts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceDiskToClone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceFilePath}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVirtualizationVirtualDiskConfig' | Write-Debug
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
            "Capacity" = ${Capacity}
            "Mode" = ${Mode}
            "Name" = ${Name}
            "SourceCerts" = ${SourceCerts}
            "SourceDiskToClone" = ${SourceDiskToClone}
            "SourceFilePath" = ${SourceFilePath}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VirtualizationVirtualDiskConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to VirtualizationVirtualDiskConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VirtualizationVirtualDiskConfig<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVirtualizationVirtualDiskConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVirtualizationVirtualDiskConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVirtualizationVirtualDiskConfig
        $AllProperties = ("ClassId", "ObjectType", "Capacity", "Mode", "Name", "SourceCerts", "SourceDiskToClone", "SourceFilePath")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SourceCerts"))) { #optional property not found
            $SourceCerts = $null
        } else {
            $SourceCerts = $JsonParameters.PSobject.Properties["SourceCerts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SourceDiskToClone"))) { #optional property not found
            $SourceDiskToClone = $null
        } else {
            $SourceDiskToClone = $JsonParameters.PSobject.Properties["SourceDiskToClone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SourceFilePath"))) { #optional property not found
            $SourceFilePath = $null
        } else {
            $SourceFilePath = $JsonParameters.PSobject.Properties["SourceFilePath"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Capacity" = ${Capacity}
            "Mode" = ${Mode}
            "Name" = ${Name}
            "SourceCerts" = ${SourceCerts}
            "SourceDiskToClone" = ${SourceDiskToClone}
            "SourceFilePath" = ${SourceFilePath}
        }

        return $PSO
    }

}

