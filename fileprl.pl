use strict;
use warnings;


open (MYSELF,'sam.txt');
while(<MYSELF>)
{
	print"$_";
	
}

close(MYSELF);
	

