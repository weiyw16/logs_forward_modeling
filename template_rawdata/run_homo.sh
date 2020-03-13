!/bin/bash
mkdir output
exepath=/home/wyw/workspace/my-faset-forward/forward_modeling/bin
rpos_start=25
rpos_end=400
rpos_step=100
recnum=$(( (${rpos_end} - ${rpos_start}) / ${rpos_step} ))

for (( this_model=0; this_model < 2; this_model+=1 ));
do
  
  for (( rpos=${rpos_start}; rpos < ${rpos_end}; rpos+=${rpos_step} ));
  #for (( rpos=25; rpos < 800; rpos+=50 ));
  #for (( rpos=175; rpos < 800; rpos+=50 ));
  #for (( rpos=125; rpos < 150; rpos+=50 ));
  do
    app_num=$((${this_model} * ${recnum} + ${this_rpos}))
    echo "processing ${app_num}"
    #start=$(date "+%s")
    echo -e "801 467 10.0 10.0\n5 50 50 15\n${rpos} 50 2 126\n15.0 1000.0 0.0005 12004\n120 120\n1\n0 200\n0 0\n" > ParamInput.txt
    ln -bs ../../model/APbgp_${this_model}.bin ./modelfile_${app_num}.bin
    #../../bin/fd2d_snap ${model_num} 
    ${exepath}/fd2d_snap ${model_num} 
    #now=$(date "+%s")
    #time=$((now-start))
    #echo "time used: $time seconds"
    #model_num=$[${model_num}+1]
  done
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
