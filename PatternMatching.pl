use feature ":5.10";
use strict;
use warnings;
my @names=qw/Kaavya Kaajal Andriya Nayanthara Trisha Smeera Nasriya Amala Santhiya Hansika Nithiya Anushka Jayashree Thivya Shreya/;

my $n;
for $n(@names)
{
	if($n=~ /iya/) 	
	{	
		#print $n."\n"; # print names which are finished iya
		
	}
	
	
}

for (@names)
{
	#say  if(/iya/);
}


for $n(@names)
{
	if($n=~/iya/)
	{
		#say $n; 
	}
}

#Ex--2

while(<@ARGV>)
{
	print $_ x 3;
	print "*\n";
	shift;
}
