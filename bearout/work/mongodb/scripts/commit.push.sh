#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/docker.config
cmd="docker commit $container $image"
$cmd
cmd="docker push $image"
$cmd
