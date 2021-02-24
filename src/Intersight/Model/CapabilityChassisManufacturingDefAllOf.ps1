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

Definition of the list of properties defined in 'capability.ChassisManufacturingDef', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Caption
Caption for Chassis enclosure.
.PARAMETER ChassisCodeName
Chassis Code Name for Chassis enclosure.
.PARAMETER Description
Description for Chassis enclosure.
.PARAMETER VarPid
Product Identifier for a Chassis enclosure.
.PARAMETER ProductName
Product Name for Chassis enclosure.
.PARAMETER Sku
SKU information for Chassis enclosure.
.PARAMETER Vid
VID information for Chassis enclosure.
.OUTPUTS

CapabilityChassisManufacturingDefAllOf<PSCustomObject>
#>

function Initialize-IntersightCapabilityChassisManufacturingDefAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("capability.ChassisManufacturingDef")]
        [String]
        ${ClassId} = "capability.ChassisManufacturingDef",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("capability.ChassisManufacturingDef")]
        [String]
        ${ObjectType} = "capability.ChassisManufacturingDef",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Caption},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ChassisCodeName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarPid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sku},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Vid}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightCapabilityChassisManufacturingDefAllOf' | Write-Debug
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
            "Caption" = ${Caption}
            "ChassisCodeName" = ${ChassisCodeName}
            "Description" = ${Description}
            "Pid" = ${VarPid}
            "ProductName" = ${ProductName}
            "Sku" = ${Sku}
            "Vid" = ${Vid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CapabilityChassisManufacturingDefAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to CapabilityChassisManufacturingDefAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CapabilityChassisManufacturingDefAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToCapabilityChassisManufacturingDefAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightCapabilityChassisManufacturingDefAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightCapabilityChassisManufacturingDefAllOf
        $AllProperties = ("ClassId", "ObjectType", "Caption", "ChassisCodeName", "Description", "Pid", "ProductName", "Sku", "Vid")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Caption"))) { #optional property not found
            $Caption = $null
        } else {
            $Caption = $JsonParameters.PSobject.Properties["Caption"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ChassisCodeName"))) { #optional property not found
            $ChassisCodeName = $null
        } else {
            $ChassisCodeName = $JsonParameters.PSobject.Properties["ChassisCodeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["Pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ProductName"))) { #optional property not found
            $ProductName = $null
        } else {
            $ProductName = $JsonParameters.PSobject.Properties["ProductName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sku"))) { #optional property not found
            $Sku = $null
        } else {
            $Sku = $JsonParameters.PSobject.Properties["Sku"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["Vid"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Caption" = ${Caption}
            "ChassisCodeName" = ${ChassisCodeName}
            "Description" = ${Description}
            "Pid" = ${VarPid}
            "ProductName" = ${ProductName}
            "Sku" = ${Sku}
            "Vid" = ${Vid}
        }

        return $PSO
    }

}

