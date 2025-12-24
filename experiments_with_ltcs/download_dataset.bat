@echo off
setlocal

:: Create the main data directory
if not exist "data" mkdir data

echo ========================================================
echo Downloading and Extracting Datasets for Windows
echo ========================================================

:: ----------------------------------------------------------
:: 1. Human Activity Recognition (HAR) - ID 240
:: ----------------------------------------------------------
echo [1/7] Processing HAR Dataset...
if not exist "data\har" mkdir "data\har"
curl -L -o data\har\data.zip https://archive.ics.uci.edu/static/public/240/human+activity+recognition+using+smartphones.zip
:: Extract flatly into data/har
tar -xf data\har\data.zip -C data\har
:: Cleanup
del data\har\data.zip
echo Done.

:: ----------------------------------------------------------
:: 2. Gesture Phase Segmentation - ID 302
:: ----------------------------------------------------------
echo [2/7] Processing Gesture Dataset...
if not exist "data\gesture" mkdir "data\gesture"
curl -L -o data\gesture\data.zip https://archive.ics.uci.edu/static/public/302/gesture+phase+segmentation.zip
tar -xf data\gesture\data.zip -C data\gesture
del data\gesture\data.zip
echo Done.

:: ----------------------------------------------------------
:: 3. Occupancy Detection - ID 357
:: ----------------------------------------------------------
echo [3/7] Processing Occupancy Dataset...
if not exist "data\occupancy" mkdir "data\occupancy"
curl -L -o data\occupancy\data.zip https://archive.ics.uci.edu/static/public/357/occupancy+detection.zip
tar -xf data\occupancy\data.zip -C data\occupancy
del data\occupancy\data.zip
echo Done.

:: ----------------------------------------------------------
:: 4. Metro Interstate Traffic Volume - ID 492
:: ----------------------------------------------------------
echo [4/7] Processing Traffic Dataset...
if not exist "data\traffic" mkdir "data\traffic"
:: New UCI zips usually contain the csv directly
curl -L -o data\traffic\data.zip https://archive.ics.uci.edu/static/public/492/metro+interstate+traffic+volume.zip
tar -xf data\traffic\data.zip -C data\traffic
del data\traffic\data.zip
echo Done.

:: ----------------------------------------------------------
:: 5. Ozone Level Detection - ID 172
:: ----------------------------------------------------------
echo [5/7] Processing Ozone Dataset...
if not exist "data\ozone" mkdir "data\ozone"
curl -L -o data\ozone\data.zip https://archive.ics.uci.edu/static/public/172/ozone+level+detection.zip
tar -xf data\ozone\data.zip -C data\ozone
del data\ozone\data.zip
echo Done.

:: ----------------------------------------------------------
:: 6. Household Power Consumption - ID 235
:: ----------------------------------------------------------
echo [6/7] Processing Power Consumption Dataset...
if not exist "data\power" mkdir "data\power"
curl -L -o data\power\data.zip https://archive.ics.uci.edu/static/public/235/individual+household+electric+power+consumption.zip
tar -xf data\power\data.zip -C data\power
del data\power\data.zip
echo Done.

:: ----------------------------------------------------------
:: 7. Localization Data (Person) - ID 196
:: ----------------------------------------------------------
echo [7/7] Processing Person Activity Dataset...
if not exist "data\person" mkdir "data\person"
curl -L -o data\person\data.zip https://archive.ics.uci.edu/static/public/196/localization+data+for+person+activity.zip
tar -xf data\person\data.zip -C data\person
del data\person\data.zip
echo Done.

echo ========================================================
echo All downloads complete.
echo check 'data' folder to verify contents.
pause