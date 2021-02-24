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

Definition of the list of properties defined in 'kubernetes.NodeInfo', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Architecture
Node Operating System architecture (amd64, arm64).
.PARAMETER BootId
A Boot ID is an Identifier generated by the host everytimes it gets reboot.
.PARAMETER ContainerRuntimeVersion
To run containers in Pods, Kubernetes uses a container runtime. This field describes Container Runtime Version.
.PARAMETER KernelVersion
Node Operating System kernel version.
.PARAMETER KubeProxyVersion
The Kubernetes network proxy runs on each node. This reflects services as defined in the Kubernetes API on each node and can do simple TCP, UDP, and SCTP stream forwarding or round robin TCP, UDP, and SCTP forwarding across a set of backends. This field describes the kube-proxy version.
.PARAMETER KubeletVersion
The kubelet is the primary ""node agent"" that runs on each node. It can register the node with the apiserver using one of such as the hostname; a flag to override the hostname; or specific logic for a cloud provider. This field describes the kubelet version the node currently using.
.PARAMETER MachineId
It is a node identifier in Kubernetes. When the node joins a kubernetes cluster, Kubernetes will assign a machine ID to that node. Learn more from man machine-id from http://man7.org/linux/man-pages/man5/machine-id.5.html.
.PARAMETER OperatingSystem
Operating System installed on this Node.
.PARAMETER OsImage
Node current Operating System image.
.PARAMETER SystemUuid
SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html.
.OUTPUTS

KubernetesNodeInfoAllOf<PSCustomObject>
#>

function Initialize-IntersightKubernetesNodeInfoAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("kubernetes.NodeInfo")]
        [String]
        ${ClassId} = "kubernetes.NodeInfo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("kubernetes.NodeInfo")]
        [String]
        ${ObjectType} = "kubernetes.NodeInfo",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Architecture},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BootId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContainerRuntimeVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${KernelVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${KubeProxyVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${KubeletVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MachineId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperatingSystem},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsImage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SystemUuid}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightKubernetesNodeInfoAllOf' | Write-Debug
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
            "Architecture" = ${Architecture}
            "BootId" = ${BootId}
            "ContainerRuntimeVersion" = ${ContainerRuntimeVersion}
            "KernelVersion" = ${KernelVersion}
            "KubeProxyVersion" = ${KubeProxyVersion}
            "KubeletVersion" = ${KubeletVersion}
            "MachineId" = ${MachineId}
            "OperatingSystem" = ${OperatingSystem}
            "OsImage" = ${OsImage}
            "SystemUuid" = ${SystemUuid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to KubernetesNodeInfoAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to KubernetesNodeInfoAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

KubernetesNodeInfoAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToKubernetesNodeInfoAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightKubernetesNodeInfoAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightKubernetesNodeInfoAllOf
        $AllProperties = ("ClassId", "ObjectType", "Architecture", "BootId", "ContainerRuntimeVersion", "KernelVersion", "KubeProxyVersion", "KubeletVersion", "MachineId", "OperatingSystem", "OsImage", "SystemUuid")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Architecture"))) { #optional property not found
            $Architecture = $null
        } else {
            $Architecture = $JsonParameters.PSobject.Properties["Architecture"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "BootId"))) { #optional property not found
            $BootId = $null
        } else {
            $BootId = $JsonParameters.PSobject.Properties["BootId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ContainerRuntimeVersion"))) { #optional property not found
            $ContainerRuntimeVersion = $null
        } else {
            $ContainerRuntimeVersion = $JsonParameters.PSobject.Properties["ContainerRuntimeVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "KernelVersion"))) { #optional property not found
            $KernelVersion = $null
        } else {
            $KernelVersion = $JsonParameters.PSobject.Properties["KernelVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "KubeProxyVersion"))) { #optional property not found
            $KubeProxyVersion = $null
        } else {
            $KubeProxyVersion = $JsonParameters.PSobject.Properties["KubeProxyVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "KubeletVersion"))) { #optional property not found
            $KubeletVersion = $null
        } else {
            $KubeletVersion = $JsonParameters.PSobject.Properties["KubeletVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "MachineId"))) { #optional property not found
            $MachineId = $null
        } else {
            $MachineId = $JsonParameters.PSobject.Properties["MachineId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OperatingSystem"))) { #optional property not found
            $OperatingSystem = $null
        } else {
            $OperatingSystem = $JsonParameters.PSobject.Properties["OperatingSystem"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "OsImage"))) { #optional property not found
            $OsImage = $null
        } else {
            $OsImage = $JsonParameters.PSobject.Properties["OsImage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "SystemUuid"))) { #optional property not found
            $SystemUuid = $null
        } else {
            $SystemUuid = $JsonParameters.PSobject.Properties["SystemUuid"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Architecture" = ${Architecture}
            "BootId" = ${BootId}
            "ContainerRuntimeVersion" = ${ContainerRuntimeVersion}
            "KernelVersion" = ${KernelVersion}
            "KubeProxyVersion" = ${KubeProxyVersion}
            "KubeletVersion" = ${KubeletVersion}
            "MachineId" = ${MachineId}
            "OperatingSystem" = ${OperatingSystem}
            "OsImage" = ${OsImage}
            "SystemUuid" = ${SystemUuid}
        }

        return $PSO
    }

}

