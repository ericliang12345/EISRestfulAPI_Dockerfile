# README

## C call Python project

This sample demo how to use C to call python object

## Setup Python header files \(on Unbutun14.04\)

```text

sudo apt-get install python-dev
```

![image link](https://github.com/ivan0124/my-study/blob/master/autotool_hello/image/autotool_20160511_1.png)

## Step Flow

1. write `Makefile.am` for generating `Makefile.in`

   top level Makefile: [Makefile.am](https://github.com/ivan0124/my-study/edit/master/autotool_hello_shared_library/Makefile.am)

   src directory Makefile: [src/Makefile.am](https://github.com/ivan0124/my-study/edit/master/autotool_hello_shared_library/src/Makefile.am)

2. generate `configure.ac` for generating `configure`

   ```text

   $autoscan
   $mv configure.scan configure.ac
   ```

3. add macro `configure.ac` for auto creating `Makefile`

   ```text

   ...
   AC_CONFIG_AUX_DIR([build-aux])
   AC_CONFIG_MACRO_DIR([m4])
   AM_INIT_AUTOMAKE([foreign -Wall])
   ...
   AM_PROG_AR
   LT_INIT
   ```

4. generating `aclocal.m4` for generating `configure`

   ```text

   $aclocal
   ```

5. generating `configure`

   ```text

   $autoconf
   ```

6. generating `Makefile.in`

   ```text

   $automake
   ```

## How to test

1. generating `aclocal.m4` for generating `configure`

   ```text

   $aclocal
   ```

2. generating `configure`

   ```text

   $autoconf
   ```

3. generating `Makefile.in`

   ```text

   $automake
   ```

4. using `configure` generate `Makefile`

   ```text

   $./configure
   ```

5. using `make` to build code

   ```text

   $make
   ```

6. running `hello` program

   ```text

   $cd src
   $./hello
   ```

