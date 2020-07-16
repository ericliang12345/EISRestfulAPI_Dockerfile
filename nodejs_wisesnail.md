# README

## How to setup modules

1.setup modules in the `nodejs_wisesnail` directory and save it in the dependencies list. For example:

```text

$ cd  ~nodejs_wisesnail
$ npm install mqtt --save
$ npm install keypress -- save
```

## Folder/File mapping introduction

1. Folder/File naming rule is using prefix `VGW_` or `CONN_` or `SENSORHUB_` + device MAC address 

![result link](https://github.com/ivan0124/my-study/blob/master/nodejs_wisesnail/images/20161011_nodejs_wisesnail_1.png)

2.Read data files in sensor hub folder to show sensor data.

![result link](https://github.com/ivan0124/my-study/blob/master/nodejs_wisesnail/images/20161012_nodejs_wisesnail_1.png)

## How to test

1. add device by adding folder and files.\(or you can use default folder `wisesnail`\)  
2. modify MQTT broker address in `mqtt_server.conf`
3. Launch wisesnail

   ```text

   $node wisesnail.js
   ```

4. `Ctrl+C` to disconnect device from RMM server

