#Paths to programs and websites being ran
$p1 = "c:\users\app1.lnk"
$p2 = "c:\users\app2.ln"
$p3 = "c:\users\app3.ln"
$p4 = "c:\users\app4.ln"
$p5 = "c:\users\app5.ln"
#browserlocation
$pathToChrome = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
$tempFolder = '--user-data-dir=c:\chrometemp'
#size of window
$startmode = '--window-size=975,588'

#websites to launch
$startPage_1 = 'https://website1.com'
$startPage_2 = 'https://website2.com'
$startPage_3 = 'https://website3.com'
#launch in incognito
$incognito = '--incognito'
#don't use browser tabs for new launch
$new = '--new-window'

#Launch applications as administrator based on location noted in P variables
write-host "Launching App 1" -ForegroundColor "Yellow" -BackgroundColor "Black" | start-process -FilePath $p1
write-host "Waiting..."
start-sleep 15
write-host "Launching App 2" -ForegroundColor "Yellow" -BackgroundColor "Black" | start-process -FilePath $p2
write-host "Waiting..."
start-sleep 15
write-host "Launching App 3" -ForegroundColor "Yellow" -BackgroundColor "Black" | start-process -FilePath $p3
write-host "Waiting..."
start-sleep 15
write-host "Launching App 4" -ForegroundColor "Yellow" -BackgroundColor "Black" | start-process -FilePath $p4
write-host "Waiting..."
start-sleep 15		
write-host "Launching App 5" -ForegroundColor "Yellow" -BackgroundColor "Black" | start-process -FilePath $p5

read-host -Prompt "Applications launched, Press Any Key To Continue...!" 
write-host "Launching website #1" 
start-process -FilePath $pathToChrome -ArgumentList $tempFolder, $startmode, $startPage_1, $incognito
start-sleep 5
write-host "Launching website #2"
Start-Process -FilePath $pathToChrome -ArgumentList $tempFolder, $startmode, $startPage_3, $new
start-sleep 5
write-host "Cleaning up"
start-sleep 5
clear
Start-Sleep -seconds 3	  
break
