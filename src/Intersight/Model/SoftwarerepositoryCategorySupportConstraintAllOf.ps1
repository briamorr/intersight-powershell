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

Definition of the list of properties defined in 'softwarerepository.CategorySupportConstraint', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER ConstraintId
Identifier for this managed object.
.PARAMETER FilteredModels
No description available.
.PARAMETER MdfId
Cisco software repository image category identifier.
.PARAMETER MinVersion
Minimum image version from where the models can be supported.
.PARAMETER ParseFromImageName
Fields which tells if the constraint is based on image name parsing.
.PARAMETER SupportedModels
No description available.
.OUTPUTS

SoftwarerepositoryCategorySupportConstraintAllOf<PSCustomObject>
#>

function Initialize-IntersightSoftwarerepositoryCategorySupportConstraintAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("softwarerepository.CategorySupportConstraint")]
        [String]
        ${ClassId} = "softwarerepository.CategorySupportConstraint",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("softwarerepository.CategorySupportConstraint")]
        [String]
        ${ObjectType} = "softwarerepository.CategorySupportConstraint",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConstraintId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FilteredModels},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MdfId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MinVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ParseFromImageName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SupportedModels}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightSoftwarerepositoryCategorySupportConstraintAllOf' | Write-Debug
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
            "ConstraintId" = ${ConstraintId}
            "FilteredModels" = ${FilteredModels}
            "MdfId" = ${MdfId}
            "MinVersion" = ${MinVersion}
            "ParseFromImageName" = ${ParseFromImageName}
            "SupportedModels" = ${SupportedModels}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SoftwarerepositoryCategorySupportConstraintAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SoftwarerepositoryCategorySupportConstraintAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SoftwarerepositoryCategorySupportConstraintAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToSoftwarerepositoryCategorySupportConstraintAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightSoftwarerepositoryCategorySupportConstraintAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightSoftwarerepositoryCategorySupportConstraintAllOf
        $AllProperties = ("ClassId", "ObjectType", "ConstraintId", "FilteredModels", "MdfId", "MinVersion", "ParseFromImageName", "SupportedModels")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConstraintId"))) { #optional property not found
            $ConstraintId = $null
        } else {
            $ConstraintId = $JsonParameters.PSobject.Properties["ConstraintId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "FilteredModels"))) { #optional property not found
            $FilteredModels = $null
        } else {
            $FilteredModels = $JsonParameters.PSobject.Properties["FilteredModels"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MdfId"))) { #optional property not found
            $MdfId = $null
        } else {
            $MdfId = $JsonParameters.PSobject.Properties["MdfId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MinVersion"))) { #optional property not found
            $MinVersion = $null
        } else {
            $MinVersion = $JsonParameters.PSobject.Properties["MinVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ParseFromImageName"))) { #optional property not found
            $ParseFromImageName = $null
        } else {
            $ParseFromImageName = $JsonParameters.PSobject.Properties["ParseFromImageName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SupportedModels"))) { #optional property not found
            $SupportedModels = $null
        } else {
            $SupportedModels = $JsonParameters.PSobject.Properties["SupportedModels"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "ConstraintId" = ${ConstraintId}
            "FilteredModels" = ${FilteredModels}
            "MdfId" = ${MdfId}
            "MinVersion" = ${MinVersion}
            "ParseFromImageName" = ${ParseFromImageName}
            "SupportedModels" = ${SupportedModels}
        }

        return $PSO
    }

}

