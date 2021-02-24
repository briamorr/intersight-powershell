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

Definition of the list of properties defined in 'workflow.DecisionTask', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Condition
The condition to evaluate for this decision task. The condition can be a workflow or task variable or an JavaScript expression. Example value for condition could be a variable like ""${task1.output.var1} or ${workflow.input.var2}"" which evaluates to a value matching any of the decision case values. Example value for condition if it's an expression - ""if ( ${task1.output.var1} ! = null && ${task1.output.var1} > 0 ) 'true'; else 'false'; "" which evaluates to 'true' or 'false' and will match one of the decision case values. You can also use JavaScript functions like indexOf, toUpperCase in the expression which will be evaluated by the expression evaluator.
.PARAMETER DecisionCases
No description available.
.PARAMETER DefaultTask
The default next Task to execute if the decision cannot be evaluated to any of the DecisionCases.
.PARAMETER InputParameters
This field is deprecated. Decision case conditions can be added using the workflow input or task output variables in the Condition field. Refer to Condition field for more details.
.OUTPUTS

WorkflowDecisionTaskAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowDecisionTaskAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.DecisionTask")]
        [String]
        ${ClassId} = "workflow.DecisionTask",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.DecisionTask")]
        [String]
        ${ObjectType} = "workflow.DecisionTask",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Condition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DecisionCases},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultTask},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InputParameters}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowDecisionTaskAllOf' | Write-Debug
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
            "Condition" = ${Condition}
            "DecisionCases" = ${DecisionCases}
            "DefaultTask" = ${DefaultTask}
            "InputParameters" = ${InputParameters}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowDecisionTaskAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowDecisionTaskAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowDecisionTaskAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowDecisionTaskAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowDecisionTaskAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowDecisionTaskAllOf
        $AllProperties = ("ClassId", "ObjectType", "Condition", "DecisionCases", "DefaultTask", "InputParameters")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DecisionCases"))) { #optional property not found
            $DecisionCases = $null
        } else {
            $DecisionCases = $JsonParameters.PSobject.Properties["DecisionCases"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DefaultTask"))) { #optional property not found
            $DefaultTask = $null
        } else {
            $DefaultTask = $JsonParameters.PSobject.Properties["DefaultTask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputParameters"))) { #optional property not found
            $InputParameters = $null
        } else {
            $InputParameters = $JsonParameters.PSobject.Properties["InputParameters"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Condition" = ${Condition}
            "DecisionCases" = ${DecisionCases}
            "DefaultTask" = ${DefaultTask}
            "InputParameters" = ${InputParameters}
        }

        return $PSO
    }

}

