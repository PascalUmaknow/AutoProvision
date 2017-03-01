#
# GeminiWebDSC.ps1
#
Configuration GeminiWebsite
{
  param ($MachineName)

  Node $MachineName
  {
   
    #Install the IIS Role 
    WindowsFeature IIS 
    { 
      Ensure = “Present” 
      Name = “Web-Server” 
    }
  WindowsFeature NetFramework35Core {
Name = “NET-Framework-Core”
Ensure = “Present”
}

WindowsFeature NetFramework45Core {
Name = “NET-Framework-45-Core”
Ensure = “Present”
} 
  }
} 