use feature ":5.10";
use strict;
use warnings;

my @names=qw/meena roja ramba heera devayani sneha leela lila kanaha/;
my $num=@names; #nmaes +1;
say "There are $num people";

my $i;
for($i=0;$i<$num;$i++)
{
	my $ln=length($names[$i]);
	print $names[$i]." "x$ln;
} 
#say ;

foreach(@names)
{
	say if(/ee/);
}
