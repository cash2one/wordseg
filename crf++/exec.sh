#!/usr/bin

time ./bin/crf_learn -f 3 -c 4.0 -p 12 template 4.train.data 4.model > 4.train.rst
time ./bin/crf_test -m 4.model 4.test.data > 4.test.rst
