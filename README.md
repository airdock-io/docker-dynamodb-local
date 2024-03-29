# DynamoDB-local [![](https://badge.imagelayers.io/airdock/dynamodb-local:latest.svg)](https://imagelayers.io/?images=airdock/dynamodb-local:latest 'Get your own badge on imagelayers.io')

> This project is no longer actively maintained.
>
> Back in 2017, few open source project provide docker image, etc and our jobs had a real nice goal. Now (2023), all open source community is mature, provides tools and images more than we needs. Thanks to all members for their time and effort.

Docker Image for [DynamoDB-local](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html) based on airdock/oracle-jdk:latest

Purpose of this image is:

- install [DynamoDB-local](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html)))
- based on airdock/oracle-jdk:latest (debian)


> Name: airdock/dynamodb-local

***Dependencies***: airdock/oracle-jdk:latest


# Usage

You should have already install [Docker](https://www.docker.com/).

Execute:

		docker run -d -p 8000:8000 --name node airdock/dynamodb-local

Note:
- Data file are localized under /srv/dynamodb-local


# Change Log

## Tag latest

- add DynamoDB-Local
- use user java:java
- MIT license

# Build


- Install "make" utility, and execute: `make build`
- Or execute: 'docker build -t airdock/dynamodb-local:latest --rm .'

See [Docker Project Tree](https://github.com/airdock-io/docker-base/wiki/Docker-Project-Tree) for more details.


# MIT License

```
The MIT License (MIT)

Copyright (c) 2015 Airdock.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
