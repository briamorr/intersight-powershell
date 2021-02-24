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

The parameter set is a rule with a condition to match the controlling parameter against a value and make a set of parameters applicable.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Condition
The condition to be evaluated. * `eq` - Checks if the values of the two parameters are equal. * `ne` - Checks if the values of the two parameters are not equal. * `contains` - Checks if the second parameter string value is a substring of the first parameter string value. * `matchesPattern` - Checks if a string matches a regular expression.
.PARAMETER ControlParameter
Name of the controlling entity, whose value will be used for evaluating the parameter set.
.PARAMETER EnableParameters
No description available.
.PARAMETER Name
Name for the parameter set.  Limited to 64 alphanumeric characters (upper and lower case), and special characters '-' and '_'.
.PARAMETER Value
The controlling parameter will be evaluated against this 'value'.
.OUTPUTS

WorkflowParameterSet<PSCustomObject>
#>

function Initialize-IntersightWorkflowParameterSet {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.ParameterSet")]
        [String]
        ${ClassId} = "workflow.ParameterSet",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.ParameterSet")]
        [String]
        ${ObjectType} = "workflow.ParameterSet",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("eq", "ne", "contains", "matchesPattern")]
        [String]
        ${Condition} = "eq",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ControlParameter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EnableParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowParameterSet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassId) {
            throw "invalid value for 'ClassId', 'ClassId' cannot be null."
        }

        if (!$ObjectType) {
            throw "invalid value for 'ObjectType', 'ObjectType' cannot be null."
        }

        if (!$EnableParameters -and $EnableParameters.length -lt 1) {
            throw "invalid value for 'EnableParameters', number of items must be greater than or equal to 1."
        }

        
        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Condition" = ${Condition}
            "ControlParameter" = ${ControlParameter}
            "EnableParameters" = ${EnableParameters}
            "Name" = ${Name}
            "Value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowParameterSet<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowParameterSet<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowParameterSet<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowParameterSet {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowParameterSet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowParameterSet
        $AllProperties = ("ClassId", "ObjectType", "Condition", "ControlParameter", "EnableParameters", "Name", "Value")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Condition"))) { #optional property not found
            $Condition = $null
        } else {
            $Condition = $JsonParameters.PSobject.Properties["Condition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ControlParameter"))) { #optional property not found
            $ControlParameter = $null
        } else {
            $ControlParameter = $JsonParameters.PSobject.Properties["ControlParameter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "EnableParameters"))) { #optional property not found
            $EnableParameters = $null
        } else {
            $EnableParameters = $JsonParameters.PSobject.Properties["EnableParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["Value"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Condition" = ${Condition}
            "ControlParameter" = ${ControlParameter}
            "EnableParameters" = ${EnableParameters}
            "Name" = ${Name}
            "Value" = ${Value}
        }

        return $PSO
    }

}

