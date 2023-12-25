#!/bin/bash
pypath='/Users/jiangshengdian/Desktop/GitHub_Repo/full_spectrum.github.io/data/arbor_cell_viz.py'

inpath='/Users/jiangshengdian/Desktop/Daily/PhD_project/Platform/SD/release/arbor/CCFv3_25um_sep'
topath='/Users/jiangshengdian/Desktop/GitHub_Repo/full_spectrum.github.io/data/arbor_figs'
tn=6
tempfifo="arbor_vtk_figs"
mkfifo ${tempfifo}
exec 6<>${tempfifo}
rm -f ${tempfifo}
for ((i=0;i<${tn};i++))
do
{
    echo ;
}
done >&6

for ptype in $(ls ${inpath})
do
read -u6
{
    # echo ${ptype}
    bpath="${inpath}/${ptype}"
    tof="${topath}/${ptype}.png"
    if [ ! -f ${tof} ];then
        python ${pypath} --folder ${bpath}
    fi
    echo >&6
} &
done
wait
exec 6>&-