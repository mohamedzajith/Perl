use feature ":5.10";
use strict;
use warnings;

#Comparison for selection
my $a=5;
if($a==5)
{
	print "It's five!\n";
}
elsif($a==6)
{
	print "It's six!\n";
}
else
{
	print "It's something other than 5 or 6.\n";
}

my $pie='Apple';
unless($pie eq 'apple' or $pie eq 'Apple' ) # if pie="apple" don't print the  sentence" 
{
	print "Ew, I don't like $pie flavored pie.\n";
}
else
{
	print "$pie! My favorite!\n";
}


# While loop

$a=0;

while($a!=3)
{
	a++;
	say "Counting up to $a....";
}

until($a==0)
{
	$a--;
	say"Counting down to $a....";
}
