#
# Cisco Intersight
# Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-02-05T15:05:56Z.
# Version: 1.0.9-3562
# Contact: intersight@cisco.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Intersight' -name 'IntersightHyperflexSummaryAllOf' {
    Context 'IntersightHyperflexSummaryAllOf' {
        It 'Initialize-IntersightHyperflexSummaryAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-IntersightHyperflexSummaryAllOf -ClassId "TEST_VALUE" -ObjectType "TEST_VALUE" -ActiveNodes "TEST_VALUE" -Address "TEST_VALUE" -Boottime "TEST_VALUE" -ClusterAccessPolicy "TEST_VALUE" -CompressionSavings "TEST_VALUE" -DataReplicationCompliance "TEST_VALUE" -DataReplicationFactor "TEST_VALUE" -DeduplicationSavings "TEST_VALUE" -Downtime "TEST_VALUE" -FreeCapacity "TEST_VALUE" -HealingInfo "TEST_VALUE" -Name "TEST_VALUE" -ResiliencyDetails "TEST_VALUE" -ResiliencyDetailsSize "TEST_VALUE" -ResiliencyInfo "TEST_VALUE" -SpaceStatus "TEST_VALUE" -State "TEST_VALUE" -TotalCapacity "TEST_VALUE" -TotalSavings "TEST_VALUE" -Uptime "TEST_VALUE" -UsedCapacity "TEST_VALUE"
            #$NewObject | Should -BeOfType HyperflexSummaryAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
