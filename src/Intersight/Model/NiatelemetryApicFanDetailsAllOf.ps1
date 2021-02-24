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

Definition of the list of properties defined in 'niatelemetry.ApicFanDetails', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER ModelNumber
Model number of the fan in APIC.
.PARAMETER RecordType
Type of record DCNM / APIC / SE. This determines the type of platform where inventory was collected.
.PARAMETER RecordVersion
Version of record being pushed. This determines what was the API version for data available from the device.
.PARAMETER SerialNumber
Serial number of the fan in APIC.
.PARAMETER VendorName
Vendor name of the fan in APIC.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

NiatelemetryApicFanDetailsAllOf<PSCustomObject>
#>

function Initialize-IntersightNiatelemetryApicFanDetailsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.ApicFanDetails")]
        [String]
        ${ClassId} = "niatelemetry.ApicFanDetails",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.ApicFanDetails")]
        [String]
        ${ObjectType} = "niatelemetry.ApicFanDetails",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ModelNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RecordType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RecordVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VendorName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiatelemetryApicFanDetailsAllOf' | Write-Debug
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
            "ModelNumber" = ${ModelNumber}
            "RecordType" = ${RecordType}
            "RecordVersion" = ${RecordVersion}
            "SerialNumber" = ${SerialNumber}
            "VendorName" = ${VendorName}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiatelemetryApicFanDetailsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiatelemetryApicFanDetailsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiatelemetryApicFanDetailsAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiatelemetryApicFanDetailsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiatelemetryApicFanDetailsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiatelemetryApicFanDetailsAllOf
        $AllProperties = ("ClassId", "ObjectType", "ModelNumber", "RecordType", "RecordVersion", "SerialNumber", "VendorName", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModelNumber"))) { #optional property not found
            $ModelNumber = $null
        } else {
            $ModelNumber = $JsonParameters.PSobject.Properties["ModelNumber"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SerialNumber"))) { #optional property not found
            $SerialNumber = $null
        } else {
            $SerialNumber = $JsonParameters.PSobject.Properties["SerialNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VendorName"))) { #optional property not found
            $VendorName = $null
        } else {
            $VendorName = $JsonParameters.PSobject.Properties["VendorName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ModelNumber" = ${ModelNumber}
            "RecordType" = ${RecordType}
            "RecordVersion" = ${RecordVersion}
            "SerialNumber" = ${SerialNumber}
            "VendorName" = ${VendorName}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

