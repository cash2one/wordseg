# wordseg
实现crf，lstm分词

# crf++
## env
* install: https://taku910.github.io/crfpp/
* include C++ and python implement
* python: 
    * export C_INCLUDE_PATH=/home/spider/wangbo01/study/git/wordseg/crf++/include/:$C_INCLUDE_PATH
    * export LIBRARY_PATH=/home/spider/wangbo01/study/git/wordseg/crf++/lib/:${LIBRARY_PATH}
    * export CPLUS_INCLUDE_PATH=/home/spider/wangbo01/study/git/wordseg/crf++/include/:$CPLUS_INCLUDE_PATH
    * python ./setup.py build
    * python ./setup.py  install --prefix=/home/spider/wangbo01/study/git/wordseg/crf++/python

## train
* 先准备训练数据 python ./process_data.py data/people-daily-bamboo-edition.txt 4
> 其中4表示S B M E表示法，还有5,6。多了m1, m2
* train  ./bin/crf_learn -f 3 -c 4.0 -p 6 template 4.train.data 4.model > 4.train.rst  
> f为3表示截断， CRF++ uses the features that occurs no less than NUM times in the given training data
> c表示能调整模型超参，C越大，模型越过拟合。
> p多线程
> a表示正则项,-a CRF-L2 or CRF-L1:
## test
* predict ./bin/crf_test -m 4.model 4.test.data > 4.test.rst  
* python ./crf_evel.py 4.test.rst 



