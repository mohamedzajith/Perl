use feature ":5.10";

$DNA="TCTGCTGGTTAAAGAGA";
print "DNA is-".$DNA."\n";

$DNA=~s/T*/U/i;
print "RNA is-".$DNA."\n";

$time1= "22:05:30";
$time2="02:45:34";

sub FindTime
{
	@time=@_;
	@sp;
	for $i(0..(scalar(@time)-1))
	{
		@sp=split(":",$time[$i]);
		say "Hours:",$sp[0];
		say "Minets:",$sp[1];
		say "seconds:",$sp[2];
	}	
	
}
FindTime($time1,$time2);

say "--"x50;
sub FindTime1
{
	@time=@_;
	@sp;
	for $i(0..(scalar(@time)-1))
	{
		if($time[$i]=~/(\d.*).(\d.*\d).(.*\d)/)
		{
		say "Hours:",$1;
		say "Minets:",$2;
		say "seconds:",$3;
		}
	}	
	
}
FindTime1($time1,$time2);













