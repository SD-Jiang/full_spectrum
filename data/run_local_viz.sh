#!/bin/bash
pypath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/local_cell_viz.py'

inpath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/SD/release/local_morphology/D15K_CCFv3_25um'
topath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/local_figs'
for brain in $(ls ${inpath})
do
    echo ${brain}
    bpath="${inpath}/${brain}"
    tof="${topath}/${brain}.png"
    if [ ! -f ${tof} ];then
        echo $bpath
        python ${pypath} --folder ${bpath}
    fi
    # echo $bpath
    # python ${pypath} --folder ${bpath}
done