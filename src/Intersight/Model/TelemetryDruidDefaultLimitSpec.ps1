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

The default limit spec takes a limit and the list of columns to do an orderBy operation over.

.PARAMETER Type
The limit spec type.
.PARAMETER Limit
How many rows to return. If not specified, all rows will be returned.
.PARAMETER Columns
null
.OUTPUTS

TelemetryDruidDefaultLimitSpec<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidDefaultLimitSpec {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("default")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Limit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Columns}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidDefaultLimitSpec' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Limit) {
            throw "invalid value for 'Limit', 'Limit' cannot be null."
        }

        if (!$Columns) {
            throw "invalid value for 'Columns', 'Columns' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "limit" = ${Limit}
            "columns" = ${Columns}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidDefaultLimitSpec<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidDefaultLimitSpec<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidDefaultLimitSpec<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidDefaultLimitSpec {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidDefaultLimitSpec' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidDefaultLimitSpec
        $AllProperties = ("type", "limit", "columns")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "limit"))) {
            throw "Error! JSON cannot be serialized due to the required property 'limit' missing."
        } else {
            $Limit = $JsonParameters.PSobject.Properties["limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "columns"))) {
            throw "Error! JSON cannot be serialized due to the required property 'columns' missing."
        } else {
            $Columns = $JsonParameters.PSobject.Properties["columns"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "limit" = ${Limit}
            "columns" = ${Columns}
        }

        return $PSO
    }

}

