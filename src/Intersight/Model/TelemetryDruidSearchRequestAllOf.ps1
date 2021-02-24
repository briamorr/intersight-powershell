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

No description available.

.PARAMETER DataSource
No description available.
.PARAMETER Intervals
A JSON Object representing ISO-8601 Intervals. This defines the time ranges to run the query over.
.PARAMETER Granularity
No description available.
.PARAMETER VarFilter
No description available.
.PARAMETER Aggregations
Aggregation functions are used to summarize data in buckets. Summarization functions include counting rows, calculating the min/max/sum of metrics and retrieving the first/last value of metrics for each bucket. Additional summarization functions are available with extensions. If no aggregator is provided, the results will be empty for each bucket.
.PARAMETER SearchDimensions
The list of dimensions to run the search over. Excluding this means the search is run over all dimensions.
.PARAMETER Query
No description available.
.PARAMETER Limit
An integer that limits the number of results. The default is unlimited.
.PARAMETER Context
No description available.
.OUTPUTS

TelemetryDruidSearchRequestAllOf<PSCustomObject>
#>

function Initialize-IntersightTelemetryDruidSearchRequestAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DataSource},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Intervals},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Granularity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Aggregations},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SearchDimensions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Context}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTelemetryDruidSearchRequestAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$DataSource) {
            throw "invalid value for 'DataSource', 'DataSource' cannot be null."
        }

        if (!$Intervals) {
            throw "invalid value for 'Intervals', 'Intervals' cannot be null."
        }

        if (!$Granularity) {
            throw "invalid value for 'Granularity', 'Granularity' cannot be null."
        }

        
        $PSO = [PSCustomObject]@{
            "dataSource" = ${DataSource}
            "intervals" = ${Intervals}
            "granularity" = ${Granularity}
            "filter" = ${VarFilter}
            "aggregations" = ${Aggregations}
            "searchDimensions" = ${SearchDimensions}
            "query" = ${Query}
            "limit" = ${Limit}
            "context" = ${Context}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TelemetryDruidSearchRequestAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to TelemetryDruidSearchRequestAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TelemetryDruidSearchRequestAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTelemetryDruidSearchRequestAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTelemetryDruidSearchRequestAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTelemetryDruidSearchRequestAllOf
        $AllProperties = ("dataSource", "intervals", "granularity", "filter", "aggregations", "searchDimensions", "query", "limit", "context")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'dataSource' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dataSource"))) {
            throw "Error! JSON cannot be serialized due to the required property 'dataSource' missing."
        } else {
            $DataSource = $JsonParameters.PSobject.Properties["dataSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "intervals"))) {
            throw "Error! JSON cannot be serialized due to the required property 'intervals' missing."
        } else {
            $Intervals = $JsonParameters.PSobject.Properties["intervals"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "granularity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'granularity' missing."
        } else {
            $Granularity = $JsonParameters.PSobject.Properties["granularity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregations"))) { #optional property not found
            $Aggregations = $null
        } else {
            $Aggregations = $JsonParameters.PSobject.Properties["aggregations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchDimensions"))) { #optional property not found
            $SearchDimensions = $null
        } else {
            $SearchDimensions = $JsonParameters.PSobject.Properties["searchDimensions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "limit"))) { #optional property not found
            $Limit = $null
        } else {
            $Limit = $JsonParameters.PSobject.Properties["limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "context"))) { #optional property not found
            $Context = $null
        } else {
            $Context = $JsonParameters.PSobject.Properties["context"].value
        }

        $PSO = [PSCustomObject]@{
            "dataSource" = ${DataSource}
            "intervals" = ${Intervals}
            "granularity" = ${Granularity}
            "filter" = ${VarFilter}
            "aggregations" = ${Aggregations}
            "searchDimensions" = ${SearchDimensions}
            "query" = ${Query}
            "limit" = ${Limit}
            "context" = ${Context}
        }

        return $PSO
    }

}

