use feature ":5.10";


open(SEQ1,"seq1.pl");
open(SEQ2,"seq2.pl");


@X=split(" ",<SEQ1>);
@Y=split(" ",<SEQ2>);
$lx=$#X;
$ly=$#Y;
$LCS=" ";
print "sequence_X= @X\n";
print "sequence_Y= @Y\n";


for $i(1..($lx))
{
for $j(1..($ly))
	{
		$values[$i][$j]=0;
		$path[$i][$j]=0;
	}
}
		for $i(1..($lx))
		{
			for $j(1..($ly))
			{
				if($X[$i]=~/$Y[$j]/)
				{
					$values[$i][$j]=$values[$i-1][$j-1]+1;
					$path[$i][$j]="O";
				}
				elsif($values[$i-1][$j]>=$values[$i][$j-1])
				{
					$values[$i][$j]=$values[$i-1][$j];		
					$path[$i][$j]="U";
				}
				else
				{
					$values[$i][$j]=$values[$i][$j-1];
					$path[$i][$j]="L";
				}
			}
		}
		
	

	

print "Values\n";
say "+"x50;
 for $k(1..($lx))
 {
 	for $l(1..($ly))
 	{
 		print "$values[$k][$l]\|";
 	}
 	print"\n"
 }
print "Path\n";
say "+"x50;
 for $k(1..($lx))
 {
 	for $l(1..($ly))
 	{
 		print "$path[$k][$l]\|";
 	}
 	print"\n"
 }
 while($lx>0 || $ly>0)
 	{
 		if($values[$lx][$ly]=~/O/)
 		{
 			$lx=$lx-1;
 			$ly=$ly-1;
 			$LCS=$LCS.$X[$lx];
 			
 		}
		elsif($values[$lx][$ly]=~/U/)
		{
			$lx=$lx-1;
		}
		else
		{
			$ly=$ly-1;
		}

	}
 print "Longest common sequence is $LCS";
 
 	