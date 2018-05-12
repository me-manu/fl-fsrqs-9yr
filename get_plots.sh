#! bin/bash
export ANALYSISDIR="/afs/slac.stanford.edu/u/gl/mmeyer/projects/VarFSRQ/"
files=( "lc/*OVRO" "lc/*weekly_tsmin4" "lc/lc_*daily" "LCfit/*orbit*all*maxiter" "LCfit/*results*orbit*maxiter" "LCEbins/" "lc/minute_" "lc/lc_minute" )
for file in "${files[@]}"
    do
        rsync $ANALYSISDIR/plots/$file*.pdf ./
    done
ls *.pdf | xargs -I@ pdfcrop @ @
git add *.pdf
