#!/bin/bash
LAYER_COUNT_LIMIT=$1
IMAGE_LAYERS_COUNT=`docker image inspect --format='{{.RootFS.Layers}}' my-app | wc -w`

if [[ $IMAGE_LAYERS_COUNT -le $LAYER_COUNT_LIMIT ]]
then
    echo "Отличная работа. Количество слоев $IMAGE_LAYERS_COUNT при допустимых $LAYER_COUNT_LIMIT"
    exit 1
else
    echo "К сожалению, количество слоев $IMAGE_LAYERS_COUNT больше чем разрешено - $LAYER_COUNT_LIMIT"
    exit 0
fi