Login-AzureRmAccount
 

$allRG = Get-AzureRmResourceGroup


foreach ( $g in $allRG){

if($g.ResourceGroupName.StartsWith("gem"))
{
  Write-Host $g.ResourceGroupName -ForegroundColor Yellow 
    Write-Host "------------------------------------------------------`n" -ForegroundColor Yellow 
    $allResources = Find-AzureRmResource -ResourceGroupNameContains $g.ResourceGroupName

    if($allResources){
        $allResources | Format-Table -Property Name, ResourceName
    }
    else{
         Write-Host "-- empty--`n"
    } 
    Write-Host "`n`n------------------------------------------------------" -ForegroundColor Yellow 
}

  
}


$lastValidation = Read-Host "Do you wich to delete ALL the resouces previously listed? (YES/ NO)"

if($lastValidation.ToLower().Equals("yes")){

    foreach ( $g in $allRG){
    if($g.ResourceGroupName.StartsWith("gem"))
{
        Write-Host "Deleting " $g.ResourceGroupName 
        Remove-AzureRmResourceGroup -Name $g.ResourceGroupName -Force
      }
    }
}
else{
     Write-Host "Aborted. Nothing was deleted." -ForegroundColor Cyan
}
