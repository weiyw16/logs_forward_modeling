#!/bin/bash 

DATAPATH=`pwd`/rawdata/
mkdir rawdata
mkdir seismo_pow
mkdir seismo_pow/vz
mkdir seismo_pow/vx
mkdir seismo_pow/div
mkdir seismo_pow/curl
mkdir seismo_shift
mkdir seismo_shift/vz
mkdir seismo_shift/vx
mkdir seismo_shift/div
mkdir seismo_shift/curl
scons -j24
