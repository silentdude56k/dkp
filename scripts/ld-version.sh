#!/usr/bin/awk -f
# extra linker version number from stdin and turn into single number
	{ 
	if ($2 ~ "gold") { sub(".*Binutils ",""); sub(").*",""); } else gsub(".*)", "");
	split($1,a, "."); 
	print a[1]*10000000 + a[2]*100000 + a[3]*10000 + a[4]*100 + a[5]; 
	exit 
	}
