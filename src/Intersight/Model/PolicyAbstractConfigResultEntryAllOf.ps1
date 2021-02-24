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

Definition of the list of properties defined in 'policy.AbstractConfigResultEntry', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property. The enum values provides the list of concrete types that can be instantiated from this abstract type.
.PARAMETER CompletedTime
The completed time of the task in installer.
.PARAMETER Context
No description available.
.PARAMETER Message
Localized message based on the locale setting of the user's context.
.PARAMETER OwnerId
The identifier of the object that owns the result message. The owner ID is used to correlate a given result entry to a task or entity. For example, a config result entry that describes the result of a workflow task may have the task's instance ID as the owner.
.PARAMETER State
Values  -- Ok, Ok-with-warning, Errored.
.PARAMETER Type
Indicates if the result is reported during the logical model validation/resource allocation phase. or the configuration applying phase. Values -- validation, config.
.OUTPUTS

PolicyAbstractConfigResultEntryAllOf<PSCustomObject>
#>

function Initialize-IntersightPolicyAbstractConfigResultEntryAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("chassis.ConfigResultEntry", "fabric.ConfigResultEntry", "hyperflex.ConfigResultEntry", "recovery.ConfigResultEntry", "server.ConfigResultEntry")]
        [String]
        ${ClassId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("chassis.ConfigResultEntry", "fabric.ConfigResultEntry", "hyperflex.ConfigResultEntry", "recovery.ConfigResultEntry", "server.ConfigResultEntry")]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CompletedTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Context},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightPolicyAbstractConfigResultEntryAllOf' | Write-Debug
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
            "CompletedTime" = ${CompletedTime}
            "Context" = ${Context}
            "Message" = ${Message}
            "OwnerId" = ${OwnerId}
            "State" = ${State}
            "Type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PolicyAbstractConfigResultEntryAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PolicyAbstractConfigResultEntryAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PolicyAbstractConfigResultEntryAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToPolicyAbstractConfigResultEntryAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightPolicyAbstractConfigResultEntryAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightPolicyAbstractConfigResultEntryAllOf
        $AllProperties = ("ClassId", "ObjectType", "CompletedTime", "Context", "Message", "OwnerId", "State", "Type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CompletedTime"))) { #optional property not found
            $CompletedTime = $null
        } else {
            $CompletedTime = $JsonParameters.PSobject.Properties["CompletedTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Context"))) { #optional property not found
            $Context = $null
        } else {
            $Context = $JsonParameters.PSobject.Properties["Context"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["Message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OwnerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["OwnerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "State"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["State"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "CompletedTime" = ${CompletedTime}
            "Context" = ${Context}
            "Message" = ${Message}
            "OwnerId" = ${OwnerId}
            "State" = ${State}
            "Type" = ${Type}
        }

        return $PSO
    }

}

