# StockBot
This is a repository for the quantopian port algorithim

## How to Run your Algorithm
Verify enviroment variabels are set
```sh
Get-ChildItem Env:
```

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

How to run the code using pylivetrader
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
