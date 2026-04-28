@Echo off

    
robocopy C:\BandG\Deckman\Data C:\BandG\Deckman\logbu start.d /z

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%%MM%%DD%_%HH%%Min%%Sec%"
echo datestamp: "%datestamp%"
echo timestamp: "%timestamp%"
echo fullstamp: "%fullstamp%"

rem RENAMING NOW
   RENAME C:\BandG\Deckman\logbu\start.d start_%fullstamp%.d 
   ::RENAME C:\2\start.d start_%fullstamp%.d 
   
>>pause