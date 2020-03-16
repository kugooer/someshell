# Bulk Tracker URL update tool for qBittorrent

## this tool is only for PT (Private Tracker) users

## 1.Why this tool ?

* I do not like the python based tool which depends on the Python parser
* I do not like other tools which replaced the tracker in qb's fastresume file directly, which maybe dangerous

## 2.What about this tool ?

* cross platform( support windows 64bit, Mac OSX 64bit, Linux x86_64 and arm64)
* use qb WEB API ( >= 2.2 ), safe and clean
* effective immediately, does not need to stop qb


## 3.usage

> you may ignore `-u` and `-p` param if you enabled the `Bypass authentication for clients on localhost` or `Bypass authentication for clients in whitelisted IP subnets`, it depends on what the current IP address is when this tool running.

### 3.1 using the WEB ui

just run the program

### 3.2 using the command line interface

just run the command with `-cli` parameter

#### show the tool version

```shell
qb-tracker-update-bulk -v

Version 	v1.0.2
Built at	2019-12-19T11:30:42+0800
Git revision	baf90b1
Git branch	master
Go version	go1.13.5
```


#### show qb info

```shell
qb-tracker-update-bulk -cli -a 'http://127.0.0.1:8080' -u 'admin' -p 'adminadmin' -i
INFO[2019-08-04 11:02:15] qBittorrent version: v4.1.6                  
INFO[2019-08-04 11:02:15] qBittorrent webapiVersion: 2.2
```

#### bulk replace tracker URL
```shell
qb-tracker-update-bulk -cli -a 'http://127.0.0.1:8080' -u 'admin' -p 'adminadmin' \
-orig 'https://tr.old.site/announce?passkey=xxxx' \
-new 'https://tr.new.site/announce?passkey=hhhh'
```
