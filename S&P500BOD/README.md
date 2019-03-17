# A Buy-on-dip algo for Alpaca API

This is a simple algo that trades every day refreshing portfolio based on the EMA ranking.
Among the universe (e.g. SP500 stocks), it ranks by daily (price - EMA) percentage as of
trading time and keep positions in sync with lowest ranked stocks.

The rationale behind this: low (price - EMA) vs price ratio indicates there is a big dip
in a short time. Since the universe is SP500 which means there is some fundamental strengths,
the belief is that the price should be recovered to some extent.

## How to run
First you need to set your enviroment variables for the rest api.
If you see an error reffering to the rest.api() call this is most likely the origin. 

Linux:
```sh
export APCA_API_BASE_URL=xxx
export APCA_API_KEY_ID=xxx
export APCA_API_SECRET_KEY=yyy
```

Windows Powershell:
Verify enviroment variabels are set
```sh
Get-ChildItem Env:
```

```sh
$env:APCA_API_BASE_URL=xxx
$env:APCA_API_KEY_ID=xxx
$env:APCA_API_SECRET_KEY=yyy
```

Verify packages are correct by installing from pip file
```
$ pip install -p
```
```
$ python main.py
```

That's it.


## Cutomization

universe.Universe is hard-coded.  Easy customization is to change this to more dynamic
set of stocks with some filters such as per-share price to be less than $50 or so.
Some of the numbers are also hard-coded and it is meant to run in an account with about
$500 deposit, with asuumption that one position to be up to $100, resulting in 5 positions
at most.  If your account size and position size preference are different, you can
change these valuess.

EMA-5 is also very arbitrary choice.  You could try something like 10, too.

## Future work

There is btest.py that runs a simple simulation.  This module needs more easy visualization
and more integrated setup, possibly using jupyter and matplotlib.