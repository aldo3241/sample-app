#!/bin/bash

docker build -t simpleapp .

docker run -it -d -p 5050:5050 --name simplerunning simpleapp
