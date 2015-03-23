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
		for $i(0..($lx+1))
		{
			for $j(0..($ly+1))
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
	
	$k=$lx;
	$l=$ly;
	
		while($k>0 || $l>0)
 		{
			if($path[$k][$l]=~/C/)
			{
				$k=$k-1;
				$l=$l-1;
				$LCS=$LCS.$X[$k];
				
				
			}
			elsif($path[$k][$l]=~/U/)
			{
				$k=$k-1;
			}
			else
			{
				$l=$l-1;
			}
		}

	
print "Values\n";
say "+"x50;
 for $k(0..($lx+1))
 {
 	for $l(0..($ly+1))
 	{
 		print $values[$k][$l]."  ";
 	}
 	print"\n"
 }
print "Path\n";
say "+"x50;
 for $k(0..($lx+1))
 {
 	for $l(0..($ly+1))
 	{
 		print $path[$k][$l]."  ";
 	}
 	print"\n"
 }
 print "Longest common sequence is $LCS"; 
 
 #output
=begin
sequence_X= T C T G C T G G T T A A A G A G A
sequence_Y= T G T C C T T G T A C C G A C A A
Values
++++++++++++++++++++++++++++++++++++++++++++++++++
0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
0  1  1  1  2  2  2  2  2  2  2  2  2  2  2  2  2  2
0  1  1  2  2  2  3  3  3  3  3  3  3  3  3  3  3  3
0  1  2  2  2  2  3  3  4  4  4  4  4  4  4  4  4  4
0  1  2  2  3  3  3  3  4  4  4  5  5  5  5  5  5  5
0  1  2  3  3  3  4  4  4  5  5  5  5  5  5  5  5  5
0  1  2  3  3  3  4  4  5  5  5  5  5  6  6  6  6  6
0  1  2  3  3  3  4  4  5  5  5  5  5  6  6  6  6  6
0  1  2  3  3  3  4  5  5  6  6  6  6  6  6  6  6  6
0  1  2  3  3  3  4  5  5  6  6  6  6  6  6  6  6  6
0  1  2  3  3  3  4  5  5  6  7  7  7  7  7  7  7  7
0  1  2  3  3  3  4  5  5  6  7  7  7  7  8  8  8  8
0  1  2  3  3  3  4  5  5  6  7  7  7  7  8  8  9  9
0  1  2  3  3  3  4  5  6  6  7  7  7  8  8  8  9  9
0  1  2  3  3  3  4  5  6  6  7  7  7  8  9  9  9  10
0  1  2  3  3  3  4  5  6  6  7  7  7  8  9  9  9  10
0  1  2  3  3  3  4  5  6  6  7  7  7  8  9  9  10  10
Path
++++++++++++++++++++++++++++++++++++++++++++++++++
0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
0  C  L  C  L  L  C  C  L  C  L  L  L  L  L  L  L  L
0  U  U  U  C  C  L  L  L  L  L  C  C  L  L  C  L  L
0  C  U  C  U  U  C  C  L  C  L  L  L  L  L  L  L  L
0  U  C  U  U  U  U  U  C  L  L  L  L  C  L  L  L  L
0  U  U  U  C  C  U  U  U  U  U  C  C  L  L  C  L  L
0  C  U  C  U  U  C  C  U  C  L  U  U  U  U  U  U  U
0  U  C  U  U  U  U  U  C  U  U  U  U  C  L  L  L  L
0  U  C  U  U  U  U  U  C  U  U  U  U  C  U  U  U  U
0  C  U  C  U  U  C  C  U  C  L  L  L  U  U  U  U  U
0  C  U  C  U  U  C  C  U  C  U  U  U  U  U  U  U  U
0  U  U  U  U  U  U  U  U  U  C  L  L  L  C  L  C  C
0  U  U  U  U  U  U  U  U  U  C  U  U  U  C  L  C  C
0  U  U  U  U  U  U  U  U  U  C  U  U  U  C  U  C  C
0  U  C  U  U  U  U  U  C  U  U  U  U  C  U  U  U  U
0  U  U  U  U  U  U  U  U  U  C  U  U  U  C  L  C  C
0  U  C  U  U  U  U  U  C  U  U  U  U  C  U  U  U  U
0  U  U  U  U  U  U  U  U  U  C  U  U  U  C  U  C  C
Longest common sequence is  AAATGTTCT
=cut