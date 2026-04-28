@Echo off

    
robocopy "C:\BandG\Deckman\log" "C:\BandG\Deckman\logbu" /z
robocopy "C:\BandG\Deckman\log" "G:\THA72\Sailing Data" /z
robocopy "C:\BandG\Deckman\log" "C:\Users\utilisateur\Dropbox\2024 Sailing Data" /z
robocopy "C:\Users\utilisateur\Documents\SailingPerformance\OnboardAssistant\Data" "G:\THA72\Sailing Data" /z
robocopy "C:\Users\utilisateur\Documents\SailingPerformance\OnboardAssistant\Data" “C:\Users\utilisateur\Dropbox\2024 Sailing Data" /z

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%%MM%%DD%_%HH%%Min%%Sec%"
echo datestamp: "%datestamp%"
echo timestamp: "%timestamp%"
echo fullstamp: "%fullstamp%"

rem RENAMING NOW
   RENAME "C:\BandG\Deckman\logbu\THA72_Njord.log" THA72_Njord_%datestamp%.log 
   RENAME "C:\BandG\Deckman\logbu\THA72_Sensors.csv" THA72_sensors_%datestamp%.csv
   RENAME "C:\Users\utilisateur\Dropbox\2024 Sailing Data\THA72_Njord.log" THA72_Njord_%datestamp%.log 
   RENAME "C:\Users\utilisateur\Dropbox\2024 Sailing Data\THA72_Sensors.csv" THA72_sensors_%datestamp%.csv
   RENAME "G:\THA72\Sailing Data\THA72_Njord.log" THA72_Njord_%datestamp%.log
   RENAME "G:\THA72\Sailing Data\THA72_Sensors.csv" THA72_sensors_%datestamp%.csv
   
>>pause