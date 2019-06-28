# python36-lambda-dev
ready-to-use amazonlinux docker image and example project for python 3.6 projects for aws lambda

## E2E Guide
TODO: link to blog post

## Docker
```
#build
docker build -t python36-lambda-dev .
#run - replace path with wherever you have the example project in your file system
docker run -v ~/git/me/python36-lambda-dev/request-test-function/function:/function -it --rm python36-lambda-dev
```

## Steps to package lambda
```
#run the continer with the above command
#go to the working directory where the python function code is
cd function 
#download dependencies to the folder
pip3.6 install requests -t ./lib
#run tests to check the project is working
pytest -s test_function.py
#adjust file permissions
chmod -R 777 .
#package
zip -r function.zip .
```





