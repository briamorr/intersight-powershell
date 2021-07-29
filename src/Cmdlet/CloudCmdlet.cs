using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
using Intersight.Api;
using Intersight.Model;

namespace Intersight.PowerShell
{
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Set CloudRegions.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Set, "IntersightCloudRegions")]
    public class SetIntersightCloudRegions:SetCmdletBase
	{
		public SetIntersightCloudRegions()
		{
			ApiInstance = new CloudApi(Config);
            ModelObject = new CloudRegions();
            MethodName = "UpdateCloudRegions";
		}
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public Dictionary<string,object> AdditionalProperties {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<string> AlternateNames {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The default zone for this region."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string DefaultZone {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Property to identify regions in same category which shares credentials. For e.g. AWS Govcloud Vs AWS Global Vs AWS China."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Group {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Flag to indicate of this region is active or not."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool IsActive {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"Property to pick regions for orchestration."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public bool IsBillingOnly {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The unique identifier of this Managed Object instance."</para>
        /// </summary>
        [Parameter(Mandatory = true, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Moid {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The display name of the region."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string Name {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The platform type for this region. For e.g. AmazonWebService.\n* `` - The device reported an empty or unrecognized platform type.\n* `APIC` - An Application Policy Infrastructure Controller cluster.\n* `DCNM` - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center.\n* `UCSFI` - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM).\n* `UCSFIISM` - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight.\n* `IMC` - A standalone UCS Server Integrated Management Controller.\n* `IMCM4` - A standalone UCS M4 Server.\n* `IMCM5` - A standalone UCS M5 server.\n* `IMCRack` - A standalone UCS M6 and above server.\n* `UCSIOM` - An UCS Chassis IO module.\n* `HX` - A HyperFlex storage controller.\n* `HyperFlexAP` - A HyperFlex Application Platform.\n* `UCSD` - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware.\n* `IntersightAppliance` - A Cisco Intersight Connected Virtual Appliance.\n* `IntersightAssist` - A Cisco Intersight Assist.\n* `PureStorageFlashArray` - A Pure Storage FlashArray device.\n* `NetAppOntap` - A NetApp ONTAP storage system.\n* `NetAppActiveIqUnifiedManager` - A NetApp Active IQ Unified Manager.\n* `EmcScaleIo` - An EMC ScaleIO storage system.\n* `EmcVmax` - An EMC VMAX storage system.\n* `EmcVplex` - An EMC VPLEX storage system.\n* `EmcXtremIo` - An EMC XtremIO storage system.\n* `VmwareVcenter` - A VMware vCenter device that manages Virtual Machines.\n* `MicrosoftHyperV` - A Microsoft Hyper-V system that manages Virtual Machines.\n* `AppDynamics` - An AppDynamics controller that monitors applications.\n* `Dynatrace` - A software-intelligence monitoring platform that simplifies enterprise cloud complexity and accelerates digital transformation.\n* `ReadHatOpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `CloudFoundry` - An open source cloud platform on which developers can build, deploy, run and scale applications.\n* `MicrosoftAzureApplicationInsights` - A feature of Azure Monitor, is an extensible Application Performance Management service for developers and DevOps professionals to monitor their live applications.\n* `OpenStack` - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.\n* `MicrosoftSqlServer` - A Microsoft SQL database server.\n* `Kubernetes` - A Kubernetes cluster that runs containerized applications.\n* `AmazonWebService` - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost.\n* `AmazonWebServiceBilling` - A Amazon web service billing target to retrieve billing information stored in S3 bucket.\n* `MicrosoftAzureServicePrincipal` - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions.\n* `MicrosoftAzureEnterpriseAgreement` - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs.\n* `DellCompellent` - A Dell Compellent storage system.\n* `HPE3Par` - A HPE 3PAR storage system.\n* `RedHatEnterpriseVirtualization` - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines.\n* `NutanixAcropolis` - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform.\n* `HPEOneView` - A HPE Oneview management system that manages compute, storage, and networking.\n* `ServiceEngine` - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications.\n* `HitachiVirtualStoragePlatform` - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers.\n* `IMCBlade` - An Intersight managed UCS Blade Server.\n* `TerraformCloud` - A Terraform Cloud account.\n* `TerraformAgent` - A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent.\n* `CustomTarget` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.\n* `HTTPEndpoint` - An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.\n* `CiscoCatalyst` - A Cisco Catalyst networking switch device."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public CloudRegions.PlatformTypeEnum PlatformType {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"HTTP endpoint of the region. For example https://ec2.us-east-2.amazonaws.com."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string RegionEndPoint {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"The region Id which is assigned by the cloud provider. For e.g. us-east-1."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public string RegionId {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<MoTag> Tags {
            get;
            set;
        }
        // <summary>
        /// <para type="description">"A reference to a assetTarget resource.\nWhen the $expand query parameter is specified, the referenced resource is returned inline."</para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public AssetTargetRelationship Target {
            get;
            set;
        }
        // <summary>
        /// <para type="description"></para>
        /// </summary>
        [Parameter(Mandatory = false, ValueFromPipelineByPropertyName = true,ValueFromPipeline = false)]
        
        public List<string> Zones {
            get;
            set;
        }
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CloudRegions.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCloudRegions", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCloudRegions:GetCmdletBase
	{
		public GetIntersightCloudRegions()
		{
			ApiInstance = new CloudApi(Config);
            MethodName = "GetCloudRegionsList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CloudSkuInstanceType.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCloudSkuInstanceType", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCloudSkuInstanceType:GetCmdletBase
	{
		public GetIntersightCloudSkuInstanceType()
		{
			ApiInstance = new CloudApi(Config);
            MethodName = "GetCloudSkuInstanceTypeList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CloudSkuNetworkType.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCloudSkuNetworkType", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCloudSkuNetworkType:GetCmdletBase
	{
		public GetIntersightCloudSkuNetworkType()
		{
			ApiInstance = new CloudApi(Config);
            MethodName = "GetCloudSkuNetworkTypeList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CloudSkuDatabaseType.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCloudSkuDatabaseType", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCloudSkuDatabaseType:GetCmdletBase
	{
		public GetIntersightCloudSkuDatabaseType()
		{
			ApiInstance = new CloudApi(Config);
            MethodName = "GetCloudSkuDatabaseTypeList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CloudSkuContainerType.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCloudSkuContainerType", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCloudSkuContainerType:GetCmdletBase
	{
		public GetIntersightCloudSkuContainerType()
		{
			ApiInstance = new CloudApi(Config);
            MethodName = "GetCloudSkuContainerTypeList";
		}
    }
    /// <summary>
    /// <para type="synopsis">This is the cmdlet to Get CloudSkuVolumeType.</para>
    /// </summary>
    [Cmdlet(VerbsCommon.Get, "IntersightCloudSkuVolumeType", DefaultParameterSetName = "CmdletParam")]
    public class GetIntersightCloudSkuVolumeType:GetCmdletBase
	{
		public GetIntersightCloudSkuVolumeType()
		{
			ApiInstance = new CloudApi(Config);
            MethodName = "GetCloudSkuVolumeTypeList";
		}
    }
}