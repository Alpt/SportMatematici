files=../analisiII/analisiII.aux
writeout() {
	local IFS='|'
	set -- $1
	label=`echo $2 | sed -e 's/ /_/g' -e 's/!/__/g'`
	par=$3
	page=$4
	partitle=$5
	echo "\def\\$label{\\textrm{[$par,pg.$page]}}"
}
IFS='
'
for line in $(cat $files | grep '^\\newlabel' | \
		sed -e 's/{/|/g' -e 's/}/|/g' -e 's/|\+/|/g')
do
	echo "%$line"
	writeout "$line"
done
