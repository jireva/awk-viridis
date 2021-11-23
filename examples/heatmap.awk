BEGIN {
	print "%!PS"
	print "/csquare {"
	print "	newpath"
	print "	0 0 moveto"
	print "	0 1 rlineto"
	print "	1 0 rlineto"
	print "	0 -1 rlineto"
	print "	closepath"
	print "	setrgbcolor"
	print "	fill"
	print "} def"
}
{
	for (i=1; i<=NF; i++) {
		printf "%s csquare\n", to_viridis_ps(0, 255, $i)
		print "1 0 translate"
	}
	printf "%s 1 translate\n", -NF
}
END {
	print "showpage"
}
