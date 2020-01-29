#!/bin/bash

conda config --set always_yes yes --set changeps1 no
conda env create --file "$1"
