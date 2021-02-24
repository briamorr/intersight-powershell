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

Definition of the list of properties defined in 'asset.WorkloadOptimizerAmazonWebServicesBillingOptions', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER CostAndUsageReportBucket
Name of S3 bucket that contains the Amazon web service Cost and Usage report to get cloud service spend.
.PARAMETER CostAndUsageReportPath
Report path prefix for the Amazon web service cost and usage report to get cloud service spend.
.PARAMETER CostAndUsageReportRegion
Region for S3 bucket that contains the Amazon web service Cost and Usage report to get cloud service spend.
.OUTPUTS

AssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf<PSCustomObject>
#>

function Initialize-IntersightAssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asset.WorkloadOptimizerAmazonWebServicesBillingOptions")]
        [String]
        ${ClassId} = "asset.WorkloadOptimizerAmazonWebServicesBillingOptions",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asset.WorkloadOptimizerAmazonWebServicesBillingOptions")]
        [String]
        ${ObjectType} = "asset.WorkloadOptimizerAmazonWebServicesBillingOptions",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CostAndUsageReportBucket},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CostAndUsageReportPath},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CostAndUsageReportRegion}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf' | Write-Debug
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
            "CostAndUsageReportBucket" = ${CostAndUsageReportBucket}
            "CostAndUsageReportPath" = ${CostAndUsageReportPath}
            "CostAndUsageReportRegion" = ${CostAndUsageReportRegion}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAssetWorkloadOptimizerAmazonWebServicesBillingOptionsAllOf
        $AllProperties = ("ClassId", "ObjectType", "CostAndUsageReportBucket", "CostAndUsageReportPath", "CostAndUsageReportRegion")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CostAndUsageReportBucket"))) { #optional property not found
            $CostAndUsageReportBucket = $null
        } else {
            $CostAndUsageReportBucket = $JsonParameters.PSobject.Properties["CostAndUsageReportBucket"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CostAndUsageReportPath"))) { #optional property not found
            $CostAndUsageReportPath = $null
        } else {
            $CostAndUsageReportPath = $JsonParameters.PSobject.Properties["CostAndUsageReportPath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CostAndUsageReportRegion"))) { #optional property not found
            $CostAndUsageReportRegion = $null
        } else {
            $CostAndUsageReportRegion = $JsonParameters.PSobject.Properties["CostAndUsageReportRegion"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "CostAndUsageReportBucket" = ${CostAndUsageReportBucket}
            "CostAndUsageReportPath" = ${CostAndUsageReportPath}
            "CostAndUsageReportRegion" = ${CostAndUsageReportRegion}
        }

        return $PSO
    }

}

