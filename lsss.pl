use feature ":5.10";


open(SEQ1,"seq1.pl");
open(SEQ2,"seq2.pl");


@X=split(" ",<SEQ1>);
@Y=split(" ",<SEQ2>);
$lx=$#X;
$ly=$#Y;
#print "$lx\n";
#print "$ly\n";
@values;
@path;
$LCS=" ";
print "sequence_X= @X\n";
print "sequence_Y= @Y\n";



for $i(1..($lx+1))
	{
		$values[$i][0]=0;
		$path[$i][0]=0;
	}
for $j(0..($ly+1))
	{
		$values[0][$j]=0;
		$path[0][$j]=0;
	}
		for $i(1..($lx+1))
		{
			for $j(1..($ly+1))
			{
				if($X[$i]=~/$Y[$j]/)
				{
					$values[$i+1][$j+1]=$values[$i][$j]+1;
					$path[$i+1][$j+1]="C";
				}
				elsif($values[$i][$j+1]>=$values[$i+1][$j])
				{
					$values[$i+1][$j+1]=$values[$i][$j+1];		
					$path[$i+1][$j+1]="U";
				}
				else
				{
					$values[$i+1][$j+1]=$values[$i+1][$j];
					$path[$i+1][$j+1]="L";
				}
			}
		}
	for $k(1..($lx+1))	
 	{
 		for $l(1..($ly+1))
 		{
			if($values[$k][$l]=~/O/)
			{
				$k=$k-1;
				$l=$l-1;
				$LCS=$LCS.$X[$k];
				
			}
			elsif($values[$k][$l]=~/U/)
			{
				$k=$k-1;
			}
			else
			{
				$l=$l-1;
			}
		}

	}
	

print "Values\n";
say "+"x50;
 for $k(1..($lx+1))
 {
 	for $l(1..($ly+1))
 	{
 		print "$values[$k][$l]\|";
 	}
 	print"\n"
 }
print "Path\n";
say "+"x50;
 for $k(1..($lx+1))
 {
 	for $l(1..($ly+1))
 	{
 		print "$path[$k][$l]\|";
 	}
 	print"\n"
 }
 print "Longest common sequence is $LCS";