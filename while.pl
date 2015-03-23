# While loop
use feature ":5.10";
use strict;
use warnings;


my $a=0;


while($a!=3)
{
	$a++;
	say "Counting up to $a....";
}
#Counting up to 1....
#Counting up to 2....
#Counting up to 3....

until($a==0)
{
	$a--;
	say"Counting down to $a....";
}

#Counting down to 2....
#Counting down to 1....
#Counting down to 0....

