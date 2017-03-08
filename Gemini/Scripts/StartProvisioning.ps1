#Login-AzureRmAccount




 
  
$rgName = "GeminiPOC1"

#TEST
Test-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/azuredeploy.json"
#exit

#New-AzureRmResourceGroup -Name $rgName -Location "East US"
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $rgName  -Mode Complete -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/azuredeploy.json" -Verbose 
 
 
 #secured deployment
# $rgName = "GeminiPOC2"
#$token = "?st=2017-03-01T15%3A16%3A00Z&se=2018-03-02T15%3A16%3A00Z&sp=rl&sv=2015-12-11&sr=c&sig=a6MDwHXBZV%2Bno%2Fgzt1jB5oJzzeL3hqBlwoZEMQ2Evvo%3D" | ConvertTo-SecureString -AsPlainText -Force
 
# $token
# New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $rgName  -Mode Complete -TemplateUri "https://geminipocarmtemplates.blob.core.windows.net/geminipocarmtemplate/azuredeploy.json?st=2017-03-01T15%3A16%3A00Z&se=2018-03-02T15%3A16%3A00Z&sp=rl&sv=2015-12-11&sr=b&sig=nxxEvd2E274XdthViL0iZjH6EWqsTw3aLBtuKyIiUZY%3D" -Verbose -_artifactsLocation "https://geminipocarmtemplates.blob.core.windows.net/geminipocarmtemplate" -_artifactsLocationSasToken  $token

 #cleanup a RG
 # New-AzureRmResourceGroupDeployment -ResourceGroupName "GeminiPOC1" -Mode Complete -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/cleanup/ResourceGroupCleanup.template.json" -Force -Verbose  
 
#$locName="East US"
#Get-AzureRMVMImagePublisher -Location $locName | Select PublisherName
#Get-AzureRMVMImageOffer -Location "East US"  -Publisher "MicrosoftWindowsServer" | Select Offer
#Get-AzureRMVMImageSku -Location "East US" -Publisher "MicrosoftWindowsServer" -Offer "WindowsServer" | Select Skus