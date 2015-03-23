use feature ":5.14";
@arr;
@symbol;
$lcs1=" ";sub LCSlength
{
	
	#@str2=qw/B D C A B A/;
	#@str1=qw/A B C B D A B/;
	
		@str1=qw/T C T G C T G G T T A A A G A G A/;
	@str2=qw/T G T C C T T G T A C C G A C A A/;
	for $i (1..($#str1+1))
	{
		$arr[$i][0] = 0;
		$symbol[$i][0] = 0;			}

	for $j (0..($#str2+1))
	{
		$arr[0][$j] = 0;
		$symbol[0][$j] = 0;		
	}
	for $i (0..($#str1+1))
	{
		for $j (0..($#str2+1))
		{
			
			if($str1[$i] =~ /$str2[$j]/)
			{
				$arr[$i+1][$j+1] = $arr[$i][$j] + 1;
				$symbol[$i+1][$j+1] = "C";
			}
			elsif ($arr[$i][$j+1] >= $arr[$i+1][$j])
			{
				$arr[$i+1][$j+1] = $arr[$i][$j+1];
				$symbol[$i+1][$j+1] = "U";
			}
			else
			{
				
				$arr[$i+1][$j+1] = $arr[$i+1][$j];
				$symbol[$i+1][$j+1] = "L";			}		}
			}

	$k=$#str1; 
	$l=$#str2;
	
	
	while ($k>0  || $l>0 )
	{
		if ($symbol[$k][$l] =~ /C/)
		{
			
			$k=$k-1;
			$l=$l-1;
			
			$lcs1=$lcs1.$str1[$k];
		}
		elsif ($symbol[$k][$l] =~ /U/)
		{
			$k=$k-1;
		}
		else
		{
			$l=$l-1;
		}
	}
	
	print "SEQ 1 : ",@str1,"\n";
	print "SEQ 2 : ",@str2,"\n";

print "\nvalues \n\n";

	for $i (0..($#str1+1))
	{
		
		for $j (0..($#str2+1))
		{
						print $arr[$i][$j]." "x3;
		}
		print "\n";
	}


print "\n\nSymbol \n\n";

	for $i (0..($#str1+1))
	{
		for $j (0..($#str2+1))
		{
			print $symbol[$i][$j]." "x3;
		}
		print "\n";
	}
	print "\n\nLCS is : ".$lcs1."\n";
}

LCSlength;

#output
=BeginSEQ 1 : TCTGCTGGTTAAAGAGA
SEQ 2 : TGTCCTTGTACCGACAA

values

0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
0   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   2   2
0   1   1   2   2   2   3   3   3   3   3   3   3   3   3   3   3   3
0   1   2   2   2   2   3   3   4   4   4   4   4   4   4   4   4   4
0   1   2   2   3   3   3   3   4   4   4   5   5   5   5   5   5   5
0   1   2   3   3   3   4   4   4   5   5   5   5   5   5   5   5   5
0   1   2   3   3   3   4   4   5   5   5   5   5   6   6   6   6   6
0   1   2   3   3   3   4   4   5   5   5   5   5   6   6   6   6   6
0   1   2   3   3   3   4   5   5   6   6   6   6   6   6   6   6   6
0   1   2   3   3   3   4   5   5   6   6   6   6   6   6   6   6   6
0   1   2   3   3   3   4   5   5   6   7   7   7   7   7   7   7   7
0   1   2   3   3   3   4   5   5   6   7   7   7   7   8   8   8   8
0   1   2   3   3   3   4   5   5   6   7   7   7   7   8   8   9   9
0   1   2   3   3   3   4   5   6   6   7   7   7   8   8   8   9   9
0   1   2   3   3   3   4   5   6   6   7   7   7   8   9   9   9   10
0   1   2   3   3   3   4   5   6   6   7   7   7   8   9   9   9   10
0   1   2   3   3   3   4   5   6   6   7   7   7   8   9   9   10   10


Symbol

0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
0   C   L   C   L   L   C   C   L   C   L   L   L   L   L   L   L   L
0   U   U   U   C   C   L   L   L   L   L   C   C   L   L   C   L   L
0   C   U   C   U   U   C   C   L   C   L   L   L   L   L   L   L   L
0   U   C   U   U   U   U   U   C   L   L   L   L   C   L   L   L   L
0   U   U   U   C   C   U   U   U   U   U   C   C   L   L   C   L   L
0   C   U   C   U   U   C   C   U   C   L   U   U   U   U   U   U   U
0   U   C   U   U   U   U   U   C   U   U   U   U   C   L   L   L   L
0   U   C   U   U   U   U   U   C   U   U   U   U   C   U   U   U   U
0   C   U   C   U   U   C   C   U   C   L   L   L   U   U   U   U   U
0   C   U   C   U   U   C   C   U   C   U   U   U   U   U   U   U   U
0   U   U   U   U   U   U   U   U   U   C   L   L   L   C   L   C   C
0   U   U   U   U   U   U   U   U   U   C   U   U   U   C   L   C   C
0   U   U   U   U   U   U   U   U   U   C   U   U   U   C   U   C   C
0   U   C   U   U   U   U   U   C   U   U   U   U   C   U   U   U   U
0   U   U   U   U   U   U   U   U   U   C   U   U   U   C   L   C   C
0   U   C   U   U   U   U   U   C   U   U   U   U   C   U   U   U   U
0   U   U   U   U   U   U   U   U   U   C   U   U   U   C   U   C   C


LCS is :  AAATGTTCT
=cut