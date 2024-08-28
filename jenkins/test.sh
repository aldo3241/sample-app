#!/bin/bash

if curl http://172.17.0.1:5050/ | grep "You are calling me from 172.17.0.1"; then
exit 0
else
exit 1
fi
