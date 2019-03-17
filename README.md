# StockBot
This is a repository for my working stockbot project.
It contains nested folders with multiple stock bots as well as a few simple algo bots in the parent directory.

## How to Run your Algorithm
All you need to do is to set broker setting, and if you are
using Alpaca (default), you can set the following.

This will set your enviroment variables for the rest api.
If you see an error reffering to the rest.api() call this is most likely the origin. 

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
To install pip dependencies when Pipfile avaliable use command
```sh
pip install -p
```
If pip command fails use a text editor to open the Pipfile.
In the Pipfile you will neeed to manually pip install the dependency. 
```sh
pip install <dependency>==x.x.x
```
Alot of algorithims require python to be in 3.6.8  
To change your conda eviroment use the command.
```sh
conda install python=x.x.x
```

## Future Deployment ideas
There are a number of ways to deploy your algorithm but
here we show how to deploy to [Heroku](https://heroku.com).

Heroku offers a free tier worker dyno that runs a program
for long time as far as the computation is not too heavy,
or you can pay as little as a few dollars a month.

Create your Heroku account if not yet, and you install
the `heroku` command line tool. Then all you need to do is
described [here](https://devcenter.heroku.com/articles/git),
You can create a new git repository here by `git init`
and follow the instruction to "push" to Heroku.

You will need to configure the environment variables
in Heroku dashboard settings.

Lastly, start your worker dyno by

```sh
heroku ps:scale worker=1
```
