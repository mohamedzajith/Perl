use feature ":5.10";

#1
sub Hello
{
	print "Hello subroutines in Perl\n";
}
Hello();

#2
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
#3
sub numbers{
	@list=@_;
	print "Given numbers are @list\n";
}
@odd=(1,3,5,7);
@even=(2,4,6,8);
numbers(@odd,@even);

#4
sub months{
	(%months)=@_;
	@keys=keys(%months);
	for($i=0;$i<scalar(@keys);$i++)
	{
		$value=$months{$keys[$i]};
				if($value==31)
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

#5
sub statecount{
	state $count=0;
	print "$count\n";
	$count++;
}
for(1..5)
{
	statecount();
}