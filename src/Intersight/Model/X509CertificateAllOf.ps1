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

Definition of the list of properties defined in 'x509.Certificate', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Issuer
No description available.
.PARAMETER PemCertificate
The base64 encoded certificate in PEM format.
.PARAMETER Subject
No description available.
.OUTPUTS

X509CertificateAllOf<PSCustomObject>
#>

function Initialize-IntersightX509CertificateAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("x509.Certificate")]
        [String]
        ${ClassId} = "x509.Certificate",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("x509.Certificate")]
        [String]
        ${ObjectType} = "x509.Certificate",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Issuer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PemCertificate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Subject}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightX509CertificateAllOf' | Write-Debug
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
            "Issuer" = ${Issuer}
            "PemCertificate" = ${PemCertificate}
            "Subject" = ${Subject}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to X509CertificateAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to X509CertificateAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

X509CertificateAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToX509CertificateAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightX509CertificateAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightX509CertificateAllOf
        $AllProperties = ("ClassId", "ObjectType", "Issuer", "NotAfter", "NotBefore", "PemCertificate", "Sha256Fingerprint", "SignatureAlgorithm", "Subject")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Issuer"))) { #optional property not found
            $Issuer = $null
        } else {
            $Issuer = $JsonParameters.PSobject.Properties["Issuer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NotAfter"))) { #optional property not found
            $NotAfter = $null
        } else {
            $NotAfter = $JsonParameters.PSobject.Properties["NotAfter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NotBefore"))) { #optional property not found
            $NotBefore = $null
        } else {
            $NotBefore = $JsonParameters.PSobject.Properties["NotBefore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PemCertificate"))) { #optional property not found
            $PemCertificate = $null
        } else {
            $PemCertificate = $JsonParameters.PSobject.Properties["PemCertificate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Sha256Fingerprint"))) { #optional property not found
            $Sha256Fingerprint = $null
        } else {
            $Sha256Fingerprint = $JsonParameters.PSobject.Properties["Sha256Fingerprint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SignatureAlgorithm"))) { #optional property not found
            $SignatureAlgorithm = $null
        } else {
            $SignatureAlgorithm = $JsonParameters.PSobject.Properties["SignatureAlgorithm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["Subject"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Issuer" = ${Issuer}
            "NotAfter" = ${NotAfter}
            "NotBefore" = ${NotBefore}
            "PemCertificate" = ${PemCertificate}
            "Sha256Fingerprint" = ${Sha256Fingerprint}
            "SignatureAlgorithm" = ${SignatureAlgorithm}
            "Subject" = ${Subject}
        }

        return $PSO
    }

}

