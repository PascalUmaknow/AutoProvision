#Login-AzureRmAccount
  
$rgName = "GeminiPOC3"

#New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName  -Mode Complete -TemplateUri "https://raw.githubusercontent.com/PascalUmaknow/AutoProvision/master/Gemini/Templates/cleanup/ResourceGroupCleanup.template.json" -Force -Verbose  
 

#$refreshFile=[system.guid]::newguid().ToString()
 
New-AzureRmResourceGroupDeployment -Name VPNDeployment -ResourceGroupName $rgName  -TemplateFile "C:\Users\Pascal\Desktop\CAE ARM Templates\Gemini\VPNGatewayTemplates\azuredeploy.json" -TemplateParameterFile  "C:\Users\Pascal\Desktop\CAE ARM Templates\Gemini\VPNGatewayTemplates\azuredeploy.parameters.json" -Verbose

 