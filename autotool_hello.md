# README

## autotool hello Project

This sample demo how to use autotool to generate `configure`,

which can auto generate `Makefile` for different platform to make code.

![image link](https://github.com/ivan0124/my-study/blob/master/autotool_hello/image/autotool_20160511_1.png)

## Step Flow

1. write `Makefile.am` for generating `Makefile.in`

   top level Makefile: [Makefile.am](https://github.com/ivan0124/my-study/blob/master/autotool_hello/Makefile.am)

   src directory Makefile: [src/Makefile.am](https://github.com/ivan0124/my-study/blob/master/autotool_hello/src/Makefile.am)

2. generate `configure.ac` for generating `configure`

   ```text

   $autoscan
   $mv configure.scan configure.ac
   ```

3. add macro `configure.ac` for auto creating `Makefile`

   ```text

   ...
   $AM_INIT_AUTOMAKE([-Wall -Werror foreign])
   ...
   ```

4. generating `aclocal.m4` for generating `configure`

   ```text

   $aclocal
   ```

5. generating `config.h.in`

   ```text

   $autoheader
   ```

6. generating `configure`

   ```text

   $autoconf
   ```

7. generating `Makefile.in`

   ```text

   $automake --add-missin
   ```

## How to test

1. using `configure` generate `Makefile`

   ```text

   $./configure
   ```

2. using `make` to build code

   ```text

   $make
   ```

3. running `hello` program

   ```text

   $cd src
   $./hello
   ```

