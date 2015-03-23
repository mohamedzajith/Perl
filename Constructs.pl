# Programming Constructs
use feature ":5.10";
use strict;
use warnings;

my $i=100;
for $i(1,2,3,4,5)
	{
		print "$i\n";
	}
	
say $i;	
for(1,2,3,4,5)
	{
		say;
	}
#say;
$_="I am hidden";
say;
say;
say;

#Create array

my @one_to_ten=(1..10);
my $top_limit=25;

for (@one_to_ten,15,20..$top_limit)
{
	say;
}