use feature ":5.10";
use strict;
use warnings;

my @names=qw/ann meena roja ramba Arunthathi heera Aruni devayani arthy anoja sneha leela lila kanaha /;
my $num=$#names +1; # $#names-last index of the names array
say "There are $num people";

my $i;
for($i=0;$i<$num;$i++)
{
	my $ln=12-length($names[$i]);
	#print $names[$i]." "x$ln;
} 
say;
my $s="."x 5;
# print name which have 5 characters
foreach(@names)
{
	#say if(/^.....$/); #^ match to the beginning of a line or string
			   # $ match to the end of a line or string
}
# print name which have 5 and more than five characters
foreach(@names)
{
	#say if(/...../);
}

# print name which have 5 characters and starts with a
foreach(@names)
{
	#say if(/^a....$/);
}

#print name which starts with a and and with i or y
foreach(@names)
{
	#say if((/^a/) & (/(i|y)$/)); 
}

#print name which starts with a and and with i or y
foreach(@names)
{
	#say if(/^a.*(i|y)$/); 
}

# pattern is case sensitive
#ignore case sensitive $/i
foreach(@names)
{
	say if(/^a.*(i|y)$/i); 
}

say "*" x40;
say "=" x40;

my $str1="aaaadeddd";
if($str1=~/a+d/) #1 or more a followed by d
{
	say "pattern matched";
}
 else 
 {
 	say ">>> pattern NOT matched";
 }
 
 my $str2="aaaadeddd";
 
 if($str1=~/a+a/) 
{
	say "pattern matched"; #1 or more a followed by a
}
 else 
 {
 	say ">>> pattern NOT matched";
 }
 
 say "*" x40;
 
 sub testPattern
 {
 	my @args= @_; # took parameter list
 	$str1=$args[0];
 	my $pat=$args[1];
 	if($str1=~/$pat/)
 	{
 		say "pattern matched";
 	}
 	else
 	{
 	say ">>> pattern NOT matched";
	}
}

 testPattern("aaaadeddd","a.+f"); # args[0]="aaaadeddd", args[1]="a.+f" parameters
 testPattern("aeiou","a.*o","aei");
 
 say "*" x40;
 
 my @list1=qw/Saran 125 Sara 446 Saman 345 Samantha 756 243e-23 .456 0.456 0.784 Arun Aruni/; 
 
 foreach my $n(@list1)
 {
 	if($n=~/^\d.+\d$/) # start with the digit and followed by some other digit and ends with the digit
 	{
 		#say $n;
 	}
 }
 
  say "*" x40;
 
 foreach my $n(@list1)
 {
 	if($n=~/^(\d+\.?\d*| \.\d+)$/) # start with the digit and followed by one dot some other digit and ends with the digit
 	{
 		#say $n;
 	}
 }
 
 $str2="The quickly sly fox jumped over a lazy brown dog";
 if($str2=~/(q.*y).*(l.*y)/)
 {
 	print $1,"<-Match First Pair of braces\n";
 	print $2,"<-- Match in the Second pair of braces\n";
 }
 
 
 #Exercise
 
my  $time1= "22:05:30";
my $time2="02:45:34";
my  $time;
my $pattern;
my j;
sub print_time
{
	my @args1= @_ ;
	
	$time=$args1[0];
	#$pattern=$args1[1];
	for($j=0;$j<length($time1);$j++)
	{
		if($time1=~/(\d.:)/)
		{
			print $1;	
		}
		say;
	}
	print $time;
}
print_time( $time1);







#/^\d.+\d$/
 #print_time $time1
 #Hours:22;
 #Minutes:5;
 #Seconds:30;
 