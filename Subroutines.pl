use feature ":5.10";

#1
sub Hello
{
	print "Hello subroutines in Perl\n";
}
Hello();


sub findOdd{
	for($i=0;$i<scalar(@_);$i++)
	{
		if(@_[$i]%2==0)
		{
			print "@_[$i] is not an odd number\n";
		}
		else
		{
			print  "@_[$i] is  a odd number\n";
		}
	}
}
findOdd(10,21,11,15);

sub numbers{
	@list=@_;
	print "Given numbers are @list\n";
}
@odd=(1,3,5,7);
@even=(2,4,6,8);
numbers(@odd,@even);


sub months{
	(%months)=@_;
	@keys=keys(%months);
	for($i=0;$i<scalar(@keys);$i++)
	{
		$value=$months{$keys[$i]};
		
		{
			print "$keys[$i] have 31 days\n";
		}
		else
		{
			print "$keys[$i] less than 31 days\n";
		}
	}
}
%date=('January',31,'February',28,'March',31);
months(%date);


sub statecount{
	state $count=0;
	print "$count\n";
	$count++;
}
for(1..5)
{
	statecount();
}