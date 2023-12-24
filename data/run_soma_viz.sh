#!/bin/bash
pypath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/soma_viz_in_vtk.py'

inpath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/soma_markers'
topath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/webpage/data/soma_figs'
for mfile in $(ls ${inpath}/*marker)
do
    bid=${mfile##*/}
    # bid=${bid%.*}
    tof=${topath}/${bid}.png
    if [ ! -f ${tof} ];then
        echo ${tof}
        python ${pypath} --p ${mfile}
    fi
done