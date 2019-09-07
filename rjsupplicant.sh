#! /bin/bash

curDir=$(cd "$(dirname "$0")"; pwd);
arg="";
until [ $# -eq 0 ]
do
	opt=$1;
	if [ "${opt/ /}" != "$opt" ]; then 
		arg="$arg \"$opt\"";
	else
		arg="$arg $opt";
	fi
        shift
done

function is64BIT()
{
	os=$(getconf LONG_BIT);
	if [ $os != "64" ];  then
		return 0;
	fi
	return 1;
}

function main()
{
	is64BIT;	
	if [ $? != "1" ];  then	
		chmod +x $curDir/x86/rjsupplicant 2>&-;
		cd $curDir/x86/
		sh -c "$curDir/x86/rjsupplicant $arg";
	else
		chmod +x $curDir/x64/rjsupplicant 2>&-;
		cd $curDir/x64/
		sh -c "$curDir/x64/rjsupplicant $arg";
	fi	
	
}
main;
exit 0;

