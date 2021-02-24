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

Definition of the list of properties defined in 'virtualization.BaseDatastore', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER Capacity
No description available.
.PARAMETER HostCount
Number of hosts attached to or supported-by this datastore.
.PARAMETER Identity
The internally generated identity of this datastore. This entity is not manipulated by users. It aids in uniquely identifying the datastore object. For VMware, this is a MOR (managed object reference).
.PARAMETER Name
Name of this datastore supplied by user. It is not the identity of the datastore. The name is subject to user manipulations.
.PARAMETER Type
A string indicating the type of the datastore (VMFS, NFS, etc). * `Unknown` - The nature of the file system is unknown. * `VMFS` - It is a Virtual Machine Filesystem. * `NFS` - It is a Network File System. * `vSAN` - It is a virtual Storage Area Network file system. * `VirtualVolume` - A Virtual Volume datastore represents a storage container in a hypervisor server.
.PARAMETER VmCount
Number of virtual machines relying on (using) this datastore.
.OUTPUTS

VirtualizationBaseDatastoreAllOf<PSCustomObject>
#>

function Initialize-IntersightVirtualizationBaseDatastoreAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("virtualization.VmwareDatastore")]
        [String]
        ${ClassId} = "virtualization.VmwareDatastore",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("virtualization.VmwareDatastore")]
        [String]
        ${ObjectType} = "virtualization.VmwareDatastore",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Capacity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${HostCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "VMFS", "NFS", "vSAN", "VirtualVolume")]
        [String]
        ${Type} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VmCount}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightVirtualizationBaseDatastoreAllOf' | Write-Debug
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
            "HostCount" = ${HostCount}
            "Identity" = ${Identity}
            "Name" = ${Name}
            "Type" = ${Type}
            "VmCount" = ${VmCount}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VirtualizationBaseDatastoreAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VirtualizationBaseDatastoreAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VirtualizationBaseDatastoreAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToVirtualizationBaseDatastoreAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightVirtualizationBaseDatastoreAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightVirtualizationBaseDatastoreAllOf
        $AllProperties = ("ClassId", "ObjectType", "Capacity", "HostCount", "Identity", "Name", "Type", "VmCount")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "HostCount"))) { #optional property not found
            $HostCount = $null
        } else {
            $HostCount = $JsonParameters.PSobject.Properties["HostCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["Identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VmCount"))) { #optional property not found
            $VmCount = $null
        } else {
            $VmCount = $JsonParameters.PSobject.Properties["VmCount"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Capacity" = ${Capacity}
            "HostCount" = ${HostCount}
            "Identity" = ${Identity}
            "Name" = ${Name}
            "Type" = ${Type}
            "VmCount" = ${VmCount}
        }

        return $PSO
    }

}

