#!/bin/bash
sleep 10
echo "Ответ сервера"
curl -si http://localhost:3010/ || true

EXPECTED_RESPONSE=$1
ACTUAL_RESPONSE=`curl -s http://localhost:3010/`

if [ "$EXPECTED_RESPONSE" = "$ACTUAL_RESPONSE" ]
then
    echo "Отличная работа. Сервер работает корректно! "
    exit 0
else
    echo "К сожалению, ответ сервера $ACTUAL_RESPONSE не совпадает с требуемым - $EXPECTED_RESPONSE"
    exit 1
fi