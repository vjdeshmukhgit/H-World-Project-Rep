﻿Import-Module -Name "C:\MyWork\Self\VSProject\HWorld2\H-World-Project-Rep\HWorld2Project\BuildExec\Invoke-MsBuild.psm1"

Write-Host "module imported!"

$outputDir = "C:\MyWork\Self\VSProject\HWorld2\H-World-Project-Rep\HWorld2Project\PublishedBuild"

Write-Host "Publish build to $outputDir" 

$BuildSucceeded = Invoke-MSBuild -Path "C:\MyWork\Self\VSProject\HWorld2\H-World-Project-Rep\HWorld2Project\HWorld2Project.sln" -MsBuildParameters "/t:rebuild /p:outdir=C:\MyWork\Self\VSProject\HWorld2\H-World-Project-Rep\HWorld2Project\PublishedBuild\" -BuildLogDirectoryPath "C:\MyWork\Self\VSProject\HWorld2\H-World-Project-Rep\HWorld2Project\BuildExec\Log" -KeepBuildLogOnSuccessfulBuilds

if($BuildSucceeded.BuildSucceeded -eq $true)
{
    Write-Output "Build process success:"
    
 }
else
{
    Write-Output "Build process failed:"
    }

