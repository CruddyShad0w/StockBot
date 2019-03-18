# StockBot
This is a repository for the quantopian port algorithim

## How to Run your Algorithm
First you need to set your enviroment variables for the rest api.
If you see an error reffering to the rest.api() call this is most likely the origin. 

Linux:
```sh
export APCA_API_BASE_URL=xxx
export APCA_API_KEY_ID=xxx
export APCA_API_SECRET_KEY=yyy
```
Verify enviroment variabels are set
```sh
Get-ChildItem Env:
```
Windows Powershell:
```sh
$env:APCA_API_BASE_URL=xxx
$env:APCA_API_KEY_ID=xxx
$env:APCA_API_SECRET_KEY=yyy
```

How to run the code using pylivetrader.
This will be the interpreter and pipeline handler.
```sh
pylivetrader run -f ./algo.py 
```
or if you have a config.yaml
```
pylivetrader run -f ./algo.py --backend-config config.yaml
```
How to create a config.yaml:
```
$ cat > config.yaml
keyid : xxx
secret : xxx
```

DEPENDENCIES:
```
pandas = "==0.22"
alpaca-trade-api = "==0.19"
pipeline-live = "==0.1.4"
pylivetrader = "*"
ipython = "*"
```
