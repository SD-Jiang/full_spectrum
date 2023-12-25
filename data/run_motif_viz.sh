#!/bin/bash
pypath='/Users/jiangshengdian/Desktop/GitHub_Repo/full_spectrum.github.io/data/motif_cell_viz.py'

inpath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/SD/release/motif/CCFv3_25um_reorg'
topath='/Users/jiangshengdian/Desktop/GitHub_Repo/full_spectrum.github.io/data/motif_figs'
for ptype in $(ls ${inpath})
do
    echo ${ptype}
    bpath="${inpath}/${ptype}"
    tof="${topath}/${ptype}.png"
    if [ ! -f ${tof} ];then
        python ${pypath} --folder ${bpath}
    fi
done