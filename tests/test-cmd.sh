#!/bin/bash
EXPECTED_CMD=$1
ACTUAL_CMD=`docker image inspect --format='{{.Config.Cmd}}' my-app`

if [ "$EXPECTED_CMD" = "$ACTUAL_CMD" ]
then
    echo "Отличная работа. Команда запуска $ACTUAL_CMD совпадает с требуемой - $EXPECTED_CMD"
    exit 1
else
    echo "К сожалению, команда запуска $ACTUAL_CMD не совпадает с требуемой - $EXPECTED_CMD"
    exit 0
fi