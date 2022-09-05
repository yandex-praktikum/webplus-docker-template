#!/bin/bash
EXPECTED_RESPONSE=$1
ACTUAL_RESPONSE=`curl -s http://localhost:3010/`

if [ "$EXPECTED_RESPONSE" = "$ACTUAL_RESPONSE" ]
then
    echo "Отличная работа. Сервер работает корректно! "
    exit 1
else
    echo "К сожалению, ответ сервера $ACTUAL_RESPONSE не совпадает с требуемым - $EXPECTED_RESPONSE"
    exit 0
fi