#!/bin/bash
set -xe

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export PYTHONPATH=$PYTHONPATH:$DIR

cd $DIR
cp pip.conf /root/.pip/pip.conf
pip install -r official/requirements.txt
cd official/mnist

python mnist.py $@


