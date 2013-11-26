1.setup Microsoft Ajax Minifier 
	http://ajaxmin.codeplex.com/

2.setup power shell
	http://support.microsoft.com/kb/968929/en-us

3.execution "Set-ExecutionPolicy RemoteSigned" under powershell(run as administrator)

4.add "ajaxminifier.ps1" to project
	edit ajaxminifier.ps1 -> 
	$execPath="C:\Program Files (x86)\Microsoft\Microsoft Ajax Minifier\ajaxmin.exe" //change your ajaxmin.exe current path.

5.add below command to post-build-event
	PowerShell $(ProjectDir)ajaxminifier.ps1 -ConfigurationName $(ConfigurationName) -ProjectDir $(ProjectDir)
