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

An AbstractWorkerTask is used to model a task that does some end-user work. This can be another task or it can be another workflow.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER Description
The description of this task instance in the workflow.
.PARAMETER Label
A user defined label identifier of the workflow task used for UI display.
.PARAMETER Name
The name of the task within the workflow and it must be unique among all WorkflowTasks within a workflow definition. This name serves as the internal unique identifier for the task and is used to pick input and output parameters to feed into other tasks.
.PARAMETER InputParameters
JSON formatted map that defines the input given to the task. JSONPath is used for chaining output from previous tasks as inputs into the current task. The format to specify the mapping is '${Source.input/output.JsonPath}'. 'Source' can be either workflow or the name of the task within the workflow. You can map the task input to either a workflow input or a task output. Following this is JSON path expression to extract JSON fragment from source's input/output.
.PARAMETER OnFailure
This specifies the name of the next task to run if Task fails.  This is the unique name given to the task instance within the workflow. In a graph model, denotes an edge to another Task Node.
.PARAMETER OnSuccess
This specifies the name of the next task to run if Task succeeds.  This is the unique name given to the task instance within the workflow. In a graph model, denotes an edge to another Task Node.
.PARAMETER RollbackDisabled
The task is disabled/enabled for rollback operation in this workflow if the task has rollback support.
.PARAMETER UseDefault
UseDefault when set to true, means the default version of the task or workflow will be used at the time of execution. When this property is set then version for task or subworkflow cannot be set. When workflow is created or updated the default version of task or subworkflow will be used for validation, but when the workflow is executed the default version that that time will be used for validation and subsequent execution.
.OUTPUTS

WorkflowAbstractWorkerTask<PSCustomObject>
#>

function Initialize-IntersightWorkflowAbstractWorkerTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.SubWorkflowTask", "workflow.WaitTask", "workflow.WorkerTask")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.SubWorkflowTask", "workflow.WaitTask", "workflow.WorkerTask")]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_:-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InputParameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OnFailure},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OnSuccess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RollbackDisabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseDefault} = $false
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowAbstractWorkerTask' | Write-Debug
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
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
            "InputParameters" = ${InputParameters}
            "OnFailure" = ${OnFailure}
            "OnSuccess" = ${OnSuccess}
            "RollbackDisabled" = ${RollbackDisabled}
            "UseDefault" = ${UseDefault}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowAbstractWorkerTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowAbstractWorkerTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowAbstractWorkerTask<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowAbstractWorkerTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowAbstractWorkerTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowAbstractWorkerTask
        $AllProperties = ("ClassId", "ObjectType", "Description", "Label", "Name", "InputParameters", "OnFailure", "OnSuccess", "RollbackDisabled", "UseDefault")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["Description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["Label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "InputParameters"))) { #optional property not found
            $InputParameters = $null
        } else {
            $InputParameters = $JsonParameters.PSobject.Properties["InputParameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OnFailure"))) { #optional property not found
            $OnFailure = $null
        } else {
            $OnFailure = $JsonParameters.PSobject.Properties["OnFailure"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OnSuccess"))) { #optional property not found
            $OnSuccess = $null
        } else {
            $OnSuccess = $JsonParameters.PSobject.Properties["OnSuccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RollbackDisabled"))) { #optional property not found
            $RollbackDisabled = $null
        } else {
            $RollbackDisabled = $JsonParameters.PSobject.Properties["RollbackDisabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "UseDefault"))) { #optional property not found
            $UseDefault = $null
        } else {
            $UseDefault = $JsonParameters.PSobject.Properties["UseDefault"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Description" = ${Description}
            "Label" = ${Label}
            "Name" = ${Name}
            "InputParameters" = ${InputParameters}
            "OnFailure" = ${OnFailure}
            "OnSuccess" = ${OnSuccess}
            "RollbackDisabled" = ${RollbackDisabled}
            "UseDefault" = ${UseDefault}
        }

        return $PSO
    }

}

