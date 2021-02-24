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

Definition of the list of properties defined in 'asset.SudiInfo', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER VarPid
The device model (PID) extracted from the X.509 SUDI Leaf Certificate.
.PARAMETER SerialNumber
The device SerialNumber extracted from the X.509 SUDI Leaf Certiicate.
.PARAMETER Signature
The signature is obtained by taking the base64 encoding of the Serial Number + PID + Status, taking the SHA256 hash and then signing with the SUDI X.509 Leaf Certifiate.
.PARAMETER Status
The validation status of the device. * `DeviceStatusUnknown` - SUDI validation is done on the establishment of a connection. Before a device connects or after it disconnects, the SUDI validation status is set to this value. * `Verified` - The device returned a valid PID, Serial Number, Status and X.509 Leaf Certificate. The certificate signing chain was validated. * `CertificateValidationFailed` - Validation of the certificate signing chain failed. * `UnsupportedFirmware` - The firmware version of the Cisco IMC that is installed does not contain the SUDI APIs needed to perform validation. * `UnsupportedHardware` - The device is a model that does not contain a Trust Anchor Module (TAM) and thus cannot be validated. * `DeviceNotResponding` - An request was sent to the device, but no response was received.
.PARAMETER SudiCertificate
No description available.
.OUTPUTS

AssetSudiInfoAllOf<PSCustomObject>
#>

function Initialize-IntersightAssetSudiInfoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asset.SudiInfo")]
        [String]
        ${ClassId} = "asset.SudiInfo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asset.SudiInfo")]
        [String]
        ${ObjectType} = "asset.SudiInfo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarPid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Signature},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DeviceStatusUnknown", "Verified", "CertificateValidationFailed", "UnsupportedFirmware", "UnsupportedHardware", "DeviceNotResponding")]
        [String]
        ${Status} = "DeviceStatusUnknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SudiCertificate}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAssetSudiInfoAllOf' | Write-Debug
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
            "Pid" = ${VarPid}
            "SerialNumber" = ${SerialNumber}
            "Signature" = ${Signature}
            "Status" = ${Status}
            "SudiCertificate" = ${SudiCertificate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssetSudiInfoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssetSudiInfoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssetSudiInfoAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAssetSudiInfoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAssetSudiInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAssetSudiInfoAllOf
        $AllProperties = ("ClassId", "ObjectType", "Pid", "SerialNumber", "Signature", "Status", "SudiCertificate")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["Pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SerialNumber"))) { #optional property not found
            $SerialNumber = $null
        } else {
            $SerialNumber = $JsonParameters.PSobject.Properties["SerialNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Signature"))) { #optional property not found
            $Signature = $null
        } else {
            $Signature = $JsonParameters.PSobject.Properties["Signature"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["Status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SudiCertificate"))) { #optional property not found
            $SudiCertificate = $null
        } else {
            $SudiCertificate = $JsonParameters.PSobject.Properties["SudiCertificate"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Pid" = ${VarPid}
            "SerialNumber" = ${SerialNumber}
            "Signature" = ${Signature}
            "Status" = ${Status}
            "SudiCertificate" = ${SudiCertificate}
        }

        return $PSO
    }

}

