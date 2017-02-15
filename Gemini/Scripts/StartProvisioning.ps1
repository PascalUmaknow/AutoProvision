#Login-AzureRmAccount



#TEST
Test-AzureRmResourceGroupDeployment -ResourceGroupName "testgem" -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/azuredeploy.json"
exit
 
  
$rgName = "gem" + [guid]::NewGuid()
New-AzureRmResourceGroup -Name $rgName -Location "West US"
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $rgName -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/azuredeploy.json"
