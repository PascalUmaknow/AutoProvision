Login-AzureRmAccount



#TEST
#Test-AzureRmResourceGroupDeployment -ResourceGroupName "testgem" -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/azuredeploy.json"
#exit
 
  
$rgName = "GeminiPOC2"
#New-AzureRmResourceGroup -Name $rgName -Location "East US"
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $rgName -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/azuredeploy.json"
 
 
 
#$locName="East US"
#Get-AzureRMVMImagePublisher -Location $locName | Select PublisherName
#Get-AzureRMVMImageOffer -Location "East US"  -Publisher "MicrosoftWindowsServer" | Select Offer
#Get-AzureRMVMImageSku -Location "East US" -Publisher "MicrosoftWindowsServer" -Offer "WindowsServer" | Select Skus