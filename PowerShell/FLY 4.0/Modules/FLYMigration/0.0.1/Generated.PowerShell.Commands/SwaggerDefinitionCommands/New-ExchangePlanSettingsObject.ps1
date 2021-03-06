<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER SynchronizeDeletion
    

.PARAMETER PolicyId
    

.PARAMETER MigrateDistributionGroups
    

.PARAMETER MigratePublicFolders
    

.PARAMETER MigrateMailboxPermissions
    

.PARAMETER Schedule
    

.PARAMETER MigrateContacts
    

.PARAMETER MigrateMailboxRules
    

.PARAMETER NameLabel
    

.PARAMETER DatabaseId
    the id of migration database

#>
function New-ExchangePlanSettingsObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [switch]
        $SynchronizeDeletion,
    
        [Parameter(Mandatory = $false)]
        [string]
        $PolicyId,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateDistributionGroups,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigratePublicFolders,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateMailboxPermissions,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.ScheduleModel]
        $Schedule,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateContacts,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateMailboxRules,
    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.PlanNameLabel]
        $NameLabel,
    
        [Parameter(Mandatory = $false)]
        [string]
        $DatabaseId
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.ExchangePlanSettingsModel

    $PSBoundParameters.GetEnumerator() | ForEach-Object { 
        if(Get-Member -InputObject $Object -Name $_.Key -MemberType Property)
        {
            $Object.$($_.Key) = $_.Value
        }
    }

    if(Get-Member -InputObject $Object -Name Validate -MemberType Method)
    {
        $Object.Validate()
    }

    return $Object
}
