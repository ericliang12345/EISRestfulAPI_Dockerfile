# README

## How to setup TensorFlow environment \( for Ubuntu 14.04 64bit/single CPU\)

Tutorial

[https://www.tensorflow.org/versions/r0.10/get\_started/os\_setup.html](https://www.tensorflow.org/versions/r0.10/get_started/os_setup.html)

1. install pip

   ```text

   # Ubuntu/Linux 64-bit
   $ sudo apt-get install python-pip python-dev
   ```

2. export path

   ```text

   # Ubuntu/Linux 64-bit, CPU only, Python 2.7
   $ export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
   ```

3. install TensorFlow

   ```text

   # Python 2
   $ sudo pip install --upgrade $TF_BINARY_URL
   ```

4. install other dependencies

   ```text

   # For Python 2.7:
   $ sudo apt-get install python-numpy swig python-dev python-wheel
   ```

## How to use TensorBoard \(for Ubuntu 14.04\)

1. run `tf_test.py` to generate logs

   ```text

   $ ./tf_test.py
   ```

2. specify logs folder and start `TensorBoard`

   ```text

   $ tensorboard --logdir=/mnt/my-study/TF_hello/logs
   ```

3. use Browser 127.0.0.1:6006 to see logs.

![link images](https://github.com/ivan0124/my-study/blob/master/TF_hello/images/20160822_5.png)

