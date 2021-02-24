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

Definition of the list of properties defined in 'workflow.ErrorResponseHandler', excluding properties defined in parent classes.

.PARAMETER ClassId
The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
.PARAMETER ObjectType
The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
.PARAMETER Description
A detailed description about the error response handler.
.PARAMETER Name
Name for the error response handler.
.PARAMETER Parameters
No description available.
.PARAMETER PlatformType
The platform type for which the error response handler is defined. * `` - The device reported an empty or unrecognized platform type. * `APIC` - An Application Policy Infrastructure Controller cluster. * `DCNM` - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center. * `UCSFI` - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM). * `UCSFIISM` - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight. * `IMC` - A standalone UCS Server Integrated Management Controller. * `IMCM4` - A standalone UCS M4 Server. * `IMCM5` - A standalone UCS M5 server. * `UCSIOM` - An UCS Chassis IO module. * `HX` - A HyperFlex storage controller. * `HyperFlexAP` - A HyperFlex Application Platform. * `UCSD` - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware. * `IntersightAppliance` - A Cisco Intersight Connected Virtual Appliance. * `IntersightAssist` - A Cisco Intersight Assist. * `PureStorageFlashArray` - A Pure Storage FlashArray device. * `NetAppOntap` - A NetApp ONTAP storage system. * `NetAppActiveIqUnifiedManager` - A NetApp Active IQ Unified Manager. * `EmcScaleIo` - An EMC ScaleIO storage system. * `EmcVmax` - An EMC VMAX storage system. * `EmcVplex` - An EMC VPLEX storage system. * `EmcXtremIo` - An EMC XtremIO storage system. * `VmwareVcenter` - A VMware vCenter device that manages Virtual Machines. * `MicrosoftHyperV` - A Microsoft HyperV system that manages Virtual Machines. * `AppDynamics` - An AppDynamics controller that monitors applications. * `Dynatrace` - A Dynatrace controller that monitors applications. * `MicrosoftSqlServer` - A Microsoft SQL database server. * `Kubernetes` - A Kubernetes cluster that runs containerized applications. * `AmazonWebService` - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost. * `AmazonWebServiceBilling` - A Amazon web service billing target to retrieve billing information stored in S3 bucket. * `MicrosoftAzureServicePrincipal` - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions. * `MicrosoftAzureEnterpriseAgreement` - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs. * `DellCompellent` - A Dell Compellent storage system. * `HPE3Par` - A HPE 3PAR storage system. * `RedHatEnterpriseVirtualization` - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines. * `NutanixAcropolis` - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform. * `HPEOneView` - A HPE Oneview management system that manages compute, storage, and networking. * `ServiceEngine` - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications. * `HitachiVirtualStoragePlatform` - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers. * `IMCBlade` - An Intersight managed UCS Blade Server. * `TerraformCloud` - A Terraform Cloud account. * `TerraformAgent` - A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent. * `CustomTarget` - An external endpoint added as Target that can be accessed through its REST API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic. * `CiscoCatalyst` - A Cisco Catalyst networking switch device.
.PARAMETER Types
No description available.
.PARAMETER Catalog
No description available.
.OUTPUTS

WorkflowErrorResponseHandlerAllOf<PSCustomObject>
#>

function Initialize-IntersightWorkflowErrorResponseHandlerAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.ErrorResponseHandler")]
        [String]
        ${ClassId} = "workflow.ErrorResponseHandler",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("workflow.ErrorResponseHandler")]
        [String]
        ${ObjectType} = "workflow.ErrorResponseHandler",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[a-zA-Z0-9_.:-]{1,64}$")]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Parameters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("", "APIC", "DCNM", "UCSFI", "UCSFIISM", "IMC", "IMCM4", "IMCM5", "UCSIOM", "HX", "HyperFlexAP", "UCSD", "IntersightAppliance", "IntersightAssist", "PureStorageFlashArray", "NetAppOntap", "NetAppActiveIqUnifiedManager", "EmcScaleIo", "EmcVmax", "EmcVplex", "EmcXtremIo", "VmwareVcenter", "MicrosoftHyperV", "AppDynamics", "Dynatrace", "MicrosoftSqlServer", "Kubernetes", "AmazonWebService", "AmazonWebServiceBilling", "MicrosoftAzureServicePrincipal", "MicrosoftAzureEnterpriseAgreement", "DellCompellent", "HPE3Par", "RedHatEnterpriseVirtualization", "NutanixAcropolis", "HPEOneView", "ServiceEngine", "HitachiVirtualStoragePlatform", "IMCBlade", "TerraformCloud", "TerraformAgent", "CustomTarget", "CiscoCatalyst")]
        [String]
        ${PlatformType} = "",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Types},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Catalog}
    )

    Process {
        'Creating PSCustomObject: Intersight => IntersightWorkflowErrorResponseHandlerAllOf' | Write-Debug
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
            "Name" = ${Name}
            "Parameters" = ${Parameters}
            "PlatformType" = ${PlatformType}
            "Types" = ${Types}
            "Catalog" = ${Catalog}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowErrorResponseHandlerAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowErrorResponseHandlerAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowErrorResponseHandlerAllOf<PSCustomObject>
#>
function ConvertFrom-IntersightJsonToWorkflowErrorResponseHandlerAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Intersight => IntersightWorkflowErrorResponseHandlerAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IntersightWorkflowErrorResponseHandlerAllOf
        $AllProperties = ("ClassId", "ObjectType", "Description", "Name", "Parameters", "PlatformType", "Types", "Catalog")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["Name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Parameters"))) { #optional property not found
            $Parameters = $null
        } else {
            $Parameters = $JsonParameters.PSobject.Properties["Parameters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "PlatformType"))) { #optional property not found
            $PlatformType = $null
        } else {
            $PlatformType = $JsonParameters.PSobject.Properties["PlatformType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Types"))) { #optional property not found
            $Types = $null
        } else {
            $Types = $JsonParameters.PSobject.Properties["Types"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Catalog"))) { #optional property not found
            $Catalog = $null
        } else {
            $Catalog = $JsonParameters.PSobject.Properties["Catalog"].value
        }

        $PSO = [PSCustomObject]@{
            "ClassId" = ${ClassId}
            "ObjectType" = ${ObjectType}
            "Description" = ${Description}
            "Name" = ${Name}
            "Parameters" = ${Parameters}
            "PlatformType" = ${PlatformType}
            "Types" = ${Types}
            "Catalog" = ${Catalog}
        }

        return $PSO
    }

}

