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

An action is used to react when an object satifies the condition specified in alert query. For e.g. an action in case of an object matching a fieldNotice query would be to create an alert instance of type 'fieldNotice' for the affected object.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER AffectedObjectType
Type of the managed object that should be marked with an instance of the Alert (when operation type is create) or that should have an alert instance removed (when operation type is remove).
.PARAMETER AlertType
Alert type is used to denote the category of an Intersight alert (FieldNotice, equipment Fault etc.). * `psirt` - Respresents the psirt alert type (https://tools.cisco.com/security/center/publicationListing.x). * `fieldNotice` - Respresents the field notice alert type (https://www.cisco.com/c/en/us/support/web/tsd-products-field-notice-summary.html).
.PARAMETER Identifiers
No description available.
.PARAMETER Name
Uniquely identifies a given action among the set of actions corresponding to an advisory. Primarily used to store and compare results of subsequent iterations corresponding to the action queries.
.PARAMETER OperationType
Operation type for the alert action. An action is used to carry out the process of ""reacting"" to an alert condition. For e.g.in case of a fieldNotice alert, the intention may be to create a new alert (if the condition matches and there is no existing alert) or to remove an existing alert when the alert condition has been remedied. * `create` - Create an instance of AdvisoryInstance. * `remove` - Remove an instance of AdvisoryInstance.
.PARAMETER Queries
No description available.
.PARAMETER Type
Type of Intersight alert. An alert in Intersight could be one of several kinds (FieldNotice, PSIRT etc.). Primarily used for filtering alerts based on the type. * `restApi` - Repesents the use of REST API for carrying out alert actions.
.OUTPUTS

TamAction<PSCustomObject>
#>

function Initialize-IntersightTamAction {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("tam.Action")]
        [String]
        ${ClassId} = "tam.Action",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("tam.Action")]
        [String]
        ${ObjectType} = "tam.Action",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AffectedObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("psirt", "fieldNotice")]
        [String]
        ${AlertType} = "psirt",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Identifiers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("create", "remove")]
        [String]
        ${OperationType} = "create",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Queries},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("restApi")]
        [String]
        ${Type} = "restApi"
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightTamAction' | Write-Debug
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
            "AffectedObjectType" = ${AffectedObjectType}
            "AlertType" = ${AlertType}
            "Identifiers" = ${Identifiers}
            "Name" = ${Name}
            "OperationType" = ${OperationType}
            "Queries" = ${Queries}
            "Type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TamAction<PSCustomObject>

.DESCRIPTION

Convert from JSON to TamAction<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TamAction<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToTamAction {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightTamAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightTamAction
        $AllProperties = ("ClassId", "ObjectType", "AffectedObjectType", "AlertType", "Identifiers", "Name", "OperationType", "Queries", "Type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AffectedObjectType"))) { #optional property not found
            $AffectedObjectType = $null
        } else {
            $AffectedObjectType = $JsonParameters.PSobject.Properties["AffectedObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AlertType"))) { #optional property not found
            $AlertType = $null
        } else {
            $AlertType = $JsonParameters.PSobject.Properties["AlertType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Identifiers"))) { #optional property not found
            $Identifiers = $null
        } else {
            $Identifiers = $JsonParameters.PSobject.Properties["Identifiers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperationType"))) { #optional property not found
            $OperationType = $null
        } else {
            $OperationType = $JsonParameters.PSobject.Properties["OperationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Queries"))) { #optional property not found
            $Queries = $null
        } else {
            $Queries = $JsonParameters.PSobject.Properties["Queries"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["Type"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AffectedObjectType" = ${AffectedObjectType}
            "AlertType" = ${AlertType}
            "Identifiers" = ${Identifiers}
            "Name" = ${Name}
            "OperationType" = ${OperationType}
            "Queries" = ${Queries}
            "Type" = ${Type}
        }

        return $PSO
    }

}

