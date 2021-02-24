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

Definition of the list of properties defined in 'access.Policy', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AddressType
No description available.
.PARAMETER InbandVlan
VLAN to be used for server access over Inband network.
.PARAMETER InbandIpPool
No description available.
.PARAMETER InbandVrf
No description available.
.PARAMETER Organization
No description available.
.PARAMETER Profiles
An array of relationships to policyAbstractConfigProfile resources.
.OUTPUTS

AccessPolicyAllOf<PSCustomObject>
#>

function Initialize-IntersightAccessPolicyAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("access.Policy")]
        [String]
        ${ClassId} = "access.Policy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("access.Policy")]
        [String]
        ${ObjectType} = "access.Policy",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AddressType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${InbandVlan},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InbandIpPool},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InbandVrf},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Organization},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Profiles}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAccessPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if ($InbandVlan -and $InbandVlan -gt 4093) {
          throw "invalid value for 'InbandVlan', must be smaller than or equal to 4093."
        }

        if ($InbandVlan -and $InbandVlan -lt 4) {
          throw "invalid value for 'InbandVlan', must be greater than or equal to 4."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AddressType" = ${AddressType}
            "InbandVlan" = ${InbandVlan}
            "InbandIpPool" = ${InbandIpPool}
            "InbandVrf" = ${InbandVrf}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessPolicyAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessPolicyAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAccessPolicyAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAccessPolicyAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAccessPolicyAllOf
        $AllProperties = ("ClassId", "ObjectType", "AddressType", "InbandVlan", "InbandIpPool", "InbandVrf", "Organization", "Profiles")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AddressType"))) { #optional property not found
            $AddressType = $null
        } else {
            $AddressType = $JsonParameters.PSobject.Properties["AddressType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandVlan"))) { #optional property not found
            $InbandVlan = $null
        } else {
            $InbandVlan = $JsonParameters.PSobject.Properties["InbandVlan"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandIpPool"))) { #optional property not found
            $InbandIpPool = $null
        } else {
            $InbandIpPool = $JsonParameters.PSobject.Properties["InbandIpPool"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InbandVrf"))) { #optional property not found
            $InbandVrf = $null
        } else {
            $InbandVrf = $JsonParameters.PSobject.Properties["InbandVrf"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Organization"))) { #optional property not found
            $Organization = $null
        } else {
            $Organization = $JsonParameters.PSobject.Properties["Organization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Profiles"))) { #optional property not found
            $Profiles = $null
        } else {
            $Profiles = $JsonParameters.PSobject.Properties["Profiles"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AddressType" = ${AddressType}
            "InbandVlan" = ${InbandVlan}
            "InbandIpPool" = ${InbandIpPool}
            "InbandVrf" = ${InbandVrf}
            "Organization" = ${Organization}
            "Profiles" = ${Profiles}
        }

        return $PSO
    }

}

