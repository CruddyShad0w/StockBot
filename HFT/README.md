# HFT
This is an example of a HFT stock bot.
It will buy stocks at open based on momentum and make trades every second based on changes in the momemtum of a stock.
It will automatically liquidate all stocks at the end of the day

###ERRORS
- [] The algorithim doesnt seem to liquidate at the end of the day
- [] verify the clock is working correctly in the if trigger statements


## How to Run your Algorithm
All you need to do is to set broker setting, and if you are
using Alpaca (default), you can set the following.

Linux:
```sh
export APCA_API_BASE_URL=xxx
export APCA_API_KEY_ID=xxx
export APCA_API_SECRET_KEY=yyy
```
Windows Powershell:
```sh
$env:APCA_API_BASE_URL=xxx
$env:APCA_API_KEY_ID=xxx
$env:APCA_API_SECRET_KEY=yyy
```
To Run:
```sh
python ./algo.py
```



