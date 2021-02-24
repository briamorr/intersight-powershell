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

Object is available for Nexus Dashboard devices.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Moid
The unique identifier of this Managed Object instance.
.PARAMETER Owners
No description available.
.PARAMETER Tags
No description available.
.PARAMETER VersionContext
No description available.
.PARAMETER Var0ClusterReplicationNetworkPolicy
No description available.
.PARAMETER Parent
No description available.
.PARAMETER ClusterName
Nexus Dashboard can onboard multiple APIC clusters/sites.
.PARAMETER IsClusterHealthy
Health of Nexus Dashboard cluster.
.PARAMETER NdClusterSize
Number of nodes in Nexus Dashboard cluster.
.PARAMETER NdType
Node type in Nexus Dashboard cluster.
.PARAMETER NdVersion
Version running on Nexus Dashboard.
.PARAMETER NumberOfApps
Number of applications installed in the Nexus Dashboard.
.PARAMETER NumberOfSchemasInMso
Number of total schemas in Multi-Site Orchestrator.
.PARAMETER NumberOfSitesInMso
Number of sites in Multi-Site Orchestrator.
.PARAMETER NumberOfSitesServiced
Number of sites serviced by ND.
.PARAMETER NumberOfTenantsInMso
Number of total tenants in Multi-Site Orchestrator.
.PARAMETER TypeOfSiteInMso
Type of site added to Multi-Site Orchestrator.
.PARAMETER RegisteredDevice
No description available.
.OUTPUTS

NiatelemetryNexusDashboards<PSCustomObject>
#>

function Initialize-IntersightNiatelemetryNexusDashboards {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.NexusDashboards")]
        [String]
        ${ClassId} = "niatelemetry.NexusDashboards",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("niatelemetry.NexusDashboards")]
        [String]
        ${ObjectType} = "niatelemetry.NexusDashboards",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Owners},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VersionContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Var0ClusterReplicationNetworkPolicy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Parent},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClusterName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IsClusterHealthy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NdClusterSize},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NdType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NdVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumberOfApps},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumberOfSchemasInMso},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumberOfSitesInMso},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumberOfSitesServiced},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NumberOfTenantsInMso},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TypeOfSiteInMso},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RegisteredDevice}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightNiatelemetryNexusDashboards' | Write-Debug
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
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Parent" = ${Parent}
            "ClusterName" = ${ClusterName}
            "IsClusterHealthy" = ${IsClusterHealthy}
            "NdClusterSize" = ${NdClusterSize}
            "NdType" = ${NdType}
            "NdVersion" = ${NdVersion}
            "NumberOfApps" = ${NumberOfApps}
            "NumberOfSchemasInMso" = ${NumberOfSchemasInMso}
            "NumberOfSitesInMso" = ${NumberOfSitesInMso}
            "NumberOfSitesServiced" = ${NumberOfSitesServiced}
            "NumberOfTenantsInMso" = ${NumberOfTenantsInMso}
            "TypeOfSiteInMso" = ${TypeOfSiteInMso}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NiatelemetryNexusDashboards<PSCustomObject>

.DESCRIPTION

Convert from JSON to NiatelemetryNexusDashboards<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NiatelemetryNexusDashboards<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToNiatelemetryNexusDashboards {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightNiatelemetryNexusDashboards' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightNiatelemetryNexusDashboards
        $AllProperties = ("ClassId", "ObjectType", "AccountMoid", "CreateTime", "DomainGroupMoid", "ModTime", "Moid", "Owners", "SharedScope", "Tags", "VersionContext", "_0_ClusterReplicationNetworkPolicy", "Ancestors", "Parent", "PermissionResources", "DisplayNames", "ClusterName", "IsClusterHealthy", "NdClusterSize", "NdType", "NdVersion", "NumberOfApps", "NumberOfSchemasInMso", "NumberOfSitesInMso", "NumberOfSitesServiced", "NumberOfTenantsInMso", "TypeOfSiteInMso", "RegisteredDevice")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "AccountMoid"))) { #optional property not found
            $AccountMoid = $null
        } else {
            $AccountMoid = $JsonParameters.PSobject.Properties["AccountMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "CreateTime"))) { #optional property not found
            $CreateTime = $null
        } else {
            $CreateTime = $JsonParameters.PSobject.Properties["CreateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DomainGroupMoid"))) { #optional property not found
            $DomainGroupMoid = $null
        } else {
            $DomainGroupMoid = $JsonParameters.PSobject.Properties["DomainGroupMoid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ModTime"))) { #optional property not found
            $ModTime = $null
        } else {
            $ModTime = $JsonParameters.PSobject.Properties["ModTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Moid"))) { #optional property not found
            $Moid = $null
        } else {
            $Moid = $JsonParameters.PSobject.Properties["Moid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Owners"))) { #optional property not found
            $Owners = $null
        } else {
            $Owners = $JsonParameters.PSobject.Properties["Owners"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SharedScope"))) { #optional property not found
            $SharedScope = $null
        } else {
            $SharedScope = $JsonParameters.PSobject.Properties["SharedScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["Tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "VersionContext"))) { #optional property not found
            $VersionContext = $null
        } else {
            $VersionContext = $JsonParameters.PSobject.Properties["VersionContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_0_ClusterReplicationNetworkPolicy"))) { #optional property not found
            $Var0ClusterReplicationNetworkPolicy = $null
        } else {
            $Var0ClusterReplicationNetworkPolicy = $JsonParameters.PSobject.Properties["_0_ClusterReplicationNetworkPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Ancestors"))) { #optional property not found
            $Ancestors = $null
        } else {
            $Ancestors = $JsonParameters.PSobject.Properties["Ancestors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parent"))) { #optional property not found
            $Parent = $null
        } else {
            $Parent = $JsonParameters.PSobject.Properties["Parent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PermissionResources"))) { #optional property not found
            $PermissionResources = $null
        } else {
            $PermissionResources = $JsonParameters.PSobject.Properties["PermissionResources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DisplayNames"))) { #optional property not found
            $DisplayNames = $null
        } else {
            $DisplayNames = $JsonParameters.PSobject.Properties["DisplayNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ClusterName"))) { #optional property not found
            $ClusterName = $null
        } else {
            $ClusterName = $JsonParameters.PSobject.Properties["ClusterName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "IsClusterHealthy"))) { #optional property not found
            $IsClusterHealthy = $null
        } else {
            $IsClusterHealthy = $JsonParameters.PSobject.Properties["IsClusterHealthy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NdClusterSize"))) { #optional property not found
            $NdClusterSize = $null
        } else {
            $NdClusterSize = $JsonParameters.PSobject.Properties["NdClusterSize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NdType"))) { #optional property not found
            $NdType = $null
        } else {
            $NdType = $JsonParameters.PSobject.Properties["NdType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NdVersion"))) { #optional property not found
            $NdVersion = $null
        } else {
            $NdVersion = $JsonParameters.PSobject.Properties["NdVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumberOfApps"))) { #optional property not found
            $NumberOfApps = $null
        } else {
            $NumberOfApps = $JsonParameters.PSobject.Properties["NumberOfApps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumberOfSchemasInMso"))) { #optional property not found
            $NumberOfSchemasInMso = $null
        } else {
            $NumberOfSchemasInMso = $JsonParameters.PSobject.Properties["NumberOfSchemasInMso"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumberOfSitesInMso"))) { #optional property not found
            $NumberOfSitesInMso = $null
        } else {
            $NumberOfSitesInMso = $JsonParameters.PSobject.Properties["NumberOfSitesInMso"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumberOfSitesServiced"))) { #optional property not found
            $NumberOfSitesServiced = $null
        } else {
            $NumberOfSitesServiced = $JsonParameters.PSobject.Properties["NumberOfSitesServiced"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "NumberOfTenantsInMso"))) { #optional property not found
            $NumberOfTenantsInMso = $null
        } else {
            $NumberOfTenantsInMso = $JsonParameters.PSobject.Properties["NumberOfTenantsInMso"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "TypeOfSiteInMso"))) { #optional property not found
            $TypeOfSiteInMso = $null
        } else {
            $TypeOfSiteInMso = $JsonParameters.PSobject.Properties["TypeOfSiteInMso"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "RegisteredDevice"))) { #optional property not found
            $RegisteredDevice = $null
        } else {
            $RegisteredDevice = $JsonParameters.PSobject.Properties["RegisteredDevice"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "AccountMoid" = ${AccountMoid}
            "CreateTime" = ${CreateTime}
            "DomainGroupMoid" = ${DomainGroupMoid}
            "ModTime" = ${ModTime}
            "Moid" = ${Moid}
            "Owners" = ${Owners}
            "SharedScope" = ${SharedScope}
            "Tags" = ${Tags}
            "VersionContext" = ${VersionContext}
            "_0_ClusterReplicationNetworkPolicy" = ${Var0ClusterReplicationNetworkPolicy}
            "Ancestors" = ${Ancestors}
            "Parent" = ${Parent}
            "PermissionResources" = ${PermissionResources}
            "DisplayNames" = ${DisplayNames}
            "ClusterName" = ${ClusterName}
            "IsClusterHealthy" = ${IsClusterHealthy}
            "NdClusterSize" = ${NdClusterSize}
            "NdType" = ${NdType}
            "NdVersion" = ${NdVersion}
            "NumberOfApps" = ${NumberOfApps}
            "NumberOfSchemasInMso" = ${NumberOfSchemasInMso}
            "NumberOfSitesInMso" = ${NumberOfSitesInMso}
            "NumberOfSitesServiced" = ${NumberOfSitesServiced}
            "NumberOfTenantsInMso" = ${NumberOfTenantsInMso}
            "TypeOfSiteInMso" = ${TypeOfSiteInMso}
            "RegisteredDevice" = ${RegisteredDevice}
        }

        return $PSO
    }

}

