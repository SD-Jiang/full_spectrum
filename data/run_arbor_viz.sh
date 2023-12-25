#!/bin/bash
pypath='/Users/jiangshengdian/Desktop/GitHub_Repo/full_spectrum.github.io/data/arbor_cell_viz.py'

inpath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/SD/release/arbor/CCFv3_25um_sep'
topath='/Users/jiangshengdian/Desktop/GitHub_Repo/full_spectrum.github.io/data/arbor_figs'
for ptype in $(ls ${inpath})
do
    echo ${ptype}
    bpath="${inpath}/${ptype}"
    tof="${topath}/${ptype}.png"
    if [ ! -f ${tof} ];then
        python ${pypath} --folder ${bpath}
    fi
done