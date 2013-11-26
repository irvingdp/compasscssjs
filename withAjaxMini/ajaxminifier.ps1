param($configurationName,$projectDir)
$execPath="C:\Program Files (x86)\Microsoft\Microsoft Ajax Minifier\ajaxmin.exe"

if($configurationName -eq  "release")
{
    #compass js file and backup origin file to *.js.org
	$jsFileList = dir "$projectDir" -include *.js -recurse
	 foreach ($file in $jsFileList)
	 {      
			if($file)
			{	
				$backupFilename = "$file" + ".org"
				$backupFileExists = Test-Path "$backupFilename"
				if(!$backupFileExists)
				{
					Copy $file $backupFilename
					& $execPath -h -js "$file" -o "$file" -clobber
				}
			}
	 }

	 #compass css file and backup origin file to *.js.org
	 $cssFileList = dir "$projectDir" -include *.css -recurse
	 foreach ($file in $cssFileList)
	 {      
			if($file)
			{	
				$backupFilename = "$file" + ".org"
				$backupFileExists = Test-Path "$backupFilename"
				if(!$backupFileExists)
				{
					Copy $file $backupFilename
					& $execPath -h -js "$file" -o "$file" -clobber
				}
			}
	 }
 }
 else
 {
     #recover compass js file ( *.js.org -> *.js)
	 $jsFileList = dir "$projectDir" -include *.js.org -recurse
	 foreach ($backupFile in $jsFileList)
	 {
		if($backupFile) # if not null
		{			
			$fileFullPath = $backupFile.DirectoryName + '\' + $backupFile.BaseName			
			Copy  $backupFile $fileFullPath
			Del $backupFile
		}
	 }

	 #recover compass css file ( *.css.org -> *.css)
	 $cssFileList = dir "$projectDir" -include *.css.org -recurse
	 foreach ($backupFile in $cssFileList)
	 {
		if($backupFile) # if not null
		{			
			$fileFullPath = $backupFile.DirectoryName + '\' + $backupFile.BaseName			
			Copy  $backupFile $fileFullPath
			Del $backupFile
		}
	 }
 }

