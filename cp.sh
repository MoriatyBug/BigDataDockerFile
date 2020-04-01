#!/bin/bash
docker cp $1 hadoop1:$2
docker cp $1 hadoop2:$2
docker cp $1 hadoop3:$2
docker cp $1 hadoop4:$2
docker cp $1 hadoop5:$2
