echo "/*
* Author     : Syamili S N
* Date       : `date +%d-%m-%Y`
*
* Filename   : ${1}
* Description: ${2}
*/
" >${1}.c
filename=`ls ${1}*`
if [ `ls ${filename}` ];then
        echo "${1} creation success."
        echo "
#include \"headers.h\"

" >> ${filename}
        cat template.c >> ${filename}

echo "
${1}:
	gcc ${filename} -o ${1}.out -w
	./${1}.out" >> Makefile

echo "${filename}: ${2}" >> README.md
vi ${filename}
make ${1}
else
        echo "${1} creation failed."
fi

