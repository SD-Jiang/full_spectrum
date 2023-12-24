#!/bin/bash
pypath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/full_cell_viz.py'

inpath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/SD/release/full_morpho/CCFv3_s10/all_25um_inbrains'
topath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/full_figs'
for brain in $(ls ${inpath})
do
    echo ${brain}
    bpath="${inpath}/${brain}"
    tof="${topath}/${brain}.png"
    if [ ! -f ${tof} ];then
        echo $bpath
        python ${pypath} --folder ${bpath}
    fi
done