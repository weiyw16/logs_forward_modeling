#!/bin/bash
model_num=7
mkdir output
exepath=/home/wyw/workspace/my-faset-forward/forward_modeling/bin

for (( rpos=375; rpos < 400; rpos+=50 ));
#for (( rpos=175; rpos < 800; rpos+=50 ));
#for (( rpos=125; rpos < 150; rpos+=50 ));
do
  echo "processing ${model_num}"
  #start=$(date "+%s")
  echo -e "801 467 10.0 10.0\n5 50 5 140\n${rpos} 50 2 126\n15.0 1000.0 0.0005 12004\n120 120\n1\n0 200\n0 0\n" > ParamInput.txt
#  ln -bs ../../model/APbgp.bin ./modelfile_${model_num}.bin
  ln -s /data/wyw/DATA/vp-velovity-model-raw/model.rsf@ ./modelfile_${model_num}.bin
  #../../bin/fd2d_snap ${model_num} 
  ${exepath}/fd2d_snap ${model_num} 
  #now=$(date "+%s")
  #time=$((now-start))
  #echo "time used: $time seconds"
  model_num=$[${model_num}+1]
done

#mkdir output snap_output
#ln -bs ../../paras/ParamInputEXPR01.txt ./ParamInput.txt
#ln -bs ../../model/APbgp.bin ./modelfile_${model_num}.bin
#../../bin/fd2d_snap ${model_num}

#bash plot.sh
#scons -c
#scons
#bash geteps.sh
## data axis: vp vs rho; z; x
