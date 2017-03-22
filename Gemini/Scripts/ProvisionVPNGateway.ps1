#Login-AzureRmAccount
  
$rgName = "GeminiPOC2"

$refreshFile=[system.guid]::newguid().ToString()
 
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $rgName  -TemplateUri ("https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/VPNGatewayTemplates/azuredeploy.json?test="+$refreshFile) -TemplateParameterUri  ("https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/VPNGatewayTemplates/azuredeploy.parameters.json?test="+$refreshFile) -Verbose

 