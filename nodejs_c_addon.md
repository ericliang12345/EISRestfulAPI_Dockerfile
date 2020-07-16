# README

## How to build NodeJS C addon

Tutorial

[http://stackabuse.com/how-to-create-c-cpp-addons-in-node/](http://stackabuse.com/how-to-create-c-cpp-addons-in-node/)

## How to setup environment

1.install nan

```text

$ sudo npm install nan
```

## How to build code

1. using `node-gyp`, generate the appropriate project build files for the given platform:

   ```text

   $ node-gyp configure
   ```

2. build code

   ```text

   $ node-gyp build
   ```

## How to test

1. run index.js

   ```text

   $ node ./index.js
   ```

