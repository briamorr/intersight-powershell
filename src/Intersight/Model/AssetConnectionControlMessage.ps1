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

Control message used to update the context of a devices connection. When a device registration is modified (e.g. by a user modifying the claim status) the process managing the connection must be notified of the change. On changes aurora will attempt to send the change to the current owner of the connection.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Account
The account id to which the device belongs.
.PARAMETER ConnectorVersion
The version of the device connector currently running on the platform. Deprecated by newer connectors that will report this directly to the device connector gateway in a websocket header, but included to continue to support older versions which report any version change after connect.
.PARAMETER DeviceId
The Moid of the device under change. Used to route the message to a devices connection.
.PARAMETER DomainGroup
The domain group id to which the device belongs.
.PARAMETER Evict
Flag to force any open connections to be evicted. Used in case device has been deleted or blacklisted.
.PARAMETER Leadership
The current leadership of a device cluster member. * `Unknown` - The node is unable to complete election or determine the current state. If the device has been registered before and the node has access to the current credentials it will establish a connection to Intersight with limited capabilities that can be used to debug the HA failure from Intersight. * `Primary` - The node has been elected as the primary and will establish a connection to the Intersight service and accept all message types enabled for a primary node. There can only be one primary in a given cluster, while the underlying platform may be active-active only one connector will assume the primary role. * `Secondary` - The node has been elected as a secondary node in the cluster. The device connector will establish a connection to the Intersight service with limited capabilities. e.g. file upload will be enabled, but requests to the underlying platform management will be disabled.
.PARAMETER NewIdentity
The new identity assigned to a device on ownership change (claim/unclaim).
.PARAMETER Partition
The partition the device was last connected to, used to address the control message to the device connector gateway instance holding the devices connection.
.OUTPUTS

AssetConnectionControlMessage<PSCustomObject>
#>

function Initialize-IntersightAssetConnectionControlMessage {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asset.ConnectionControlMessage")]
        [String]
        ${ClassId} = "asset.ConnectionControlMessage",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("asset.ConnectionControlMessage")]
        [String]
        ${ObjectType} = "asset.ConnectionControlMessage",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainGroup},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Evict},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Unknown", "Primary", "Secondary")]
        [String]
        ${Leadership} = "Unknown",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NewIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Partition}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightAssetConnectionControlMessage' | Write-Debug
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
            "Account" = ${Account}
            "ConnectorVersion" = ${ConnectorVersion}
            "DeviceId" = ${DeviceId}
            "DomainGroup" = ${DomainGroup}
            "Evict" = ${Evict}
            "Leadership" = ${Leadership}
            "NewIdentity" = ${NewIdentity}
            "Partition" = ${Partition}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssetConnectionControlMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssetConnectionControlMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssetConnectionControlMessage<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToAssetConnectionControlMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightAssetConnectionControlMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightAssetConnectionControlMessage
        $AllProperties = ("ClassId", "ObjectType", "Account", "ConnectorVersion", "DeviceId", "DomainGroup", "Evict", "Leadership", "NewIdentity", "Partition")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["Account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ConnectorVersion"))) { #optional property not found
            $ConnectorVersion = $null
        } else {
            $ConnectorVersion = $JsonParameters.PSobject.Properties["ConnectorVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DeviceId"))) { #optional property not found
            $DeviceId = $null
        } else {
            $DeviceId = $JsonParameters.PSobject.Properties["DeviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroup"))) { #optional property not found
            $DomainGroup = $null
        } else {
            $DomainGroup = $JsonParameters.PSobject.Properties["DomainGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Evict"))) { #optional property not found
            $Evict = $null
        } else {
            $Evict = $JsonParameters.PSobject.Properties["Evict"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Leadership"))) { #optional property not found
            $Leadership = $null
        } else {
            $Leadership = $JsonParameters.PSobject.Properties["Leadership"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NewIdentity"))) { #optional property not found
            $NewIdentity = $null
        } else {
            $NewIdentity = $JsonParameters.PSobject.Properties["NewIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Partition"))) { #optional property not found
            $Partition = $null
        } else {
            $Partition = $JsonParameters.PSobject.Properties["Partition"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Account" = ${Account}
            "ConnectorVersion" = ${ConnectorVersion}
            "DeviceId" = ${DeviceId}
            "DomainGroup" = ${DomainGroup}
            "Evict" = ${Evict}
            "Leadership" = ${Leadership}
            "NewIdentity" = ${NewIdentity}
            "Partition" = ${Partition}
        }

        return $PSO
    }

}

