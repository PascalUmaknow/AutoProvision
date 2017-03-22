Login-AzureRmAccount
  
$rgName = "GeminiPOC2"

$refreshFile=[system.guid]::newguid().ToString()
 
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $rgName  -TemplateUri ("https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/VPNGatewayTemplates/azuredeploy.json?test="+$refreshFile) -Verbose

 