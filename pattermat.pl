use feature ":5.10";
sub testpattern
{
	@arg=@_;
	if($arg[0]=~$arg[1])
	{
		print "Matched patterns\n";
	}
	else
	{
		print "Pattern not matched\n";
	}
}

$str="a.*d";
testpattern("aaaaaaddada",$str);

@list1=qw/Saran 125 Sara 446 Saman 345 Samantha 756 243e-23 .456 0.456 0.784 Arun Aruni/; 

foreach $i(@list1)
{
	if($i=~/^\d.+\d$/)
	{
		print "$i\n";
	}
}
say "+"x50;

foreach $i(@list1)
{
	if($i=~/^\d*\d$/)
	{
		print "$i\n";
	}
}
say "+"x50;
for $i(0..scalar(@list1))
{
	if($i=~/^\s.*\n$/i)
	
	{
	
		print "$i\n";
	}
	
}