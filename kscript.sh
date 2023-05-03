echo "/*
* Author     : Syamili S N              Filename   : ${1}
* Date       : `date +%d-%m-%Y`    	        Description: ${2}
*/
" >${1}.c
filename=`ls ${1}*`
if [ `ls ${filename}` ];then
        echo "${1} creation success."
        echo "
#include \"script/headerskern.h\"

" >> ${filename}
        cat script/templatekern.c >> ${filename}
echo "`./script/lkm.sh ${1}`"

echo "${filename}: ${2}" >> README.md
vi ${filename}
make 
else
        echo "${1} creation failed."
fi

