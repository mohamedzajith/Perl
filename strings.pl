use feature ":5.10";


$string="This is perl";
$string1="\UThis is perl";
$substr=substr($string,4,4);
print "$string1\n";
print "\$substr=$substr\n";


substr($string,8,4)="Java";
print "$string\n";


$string=~s/is/program in/;

print "$string\n";





$string=q| In 1956, Hungarians rose up against
their Russian-influenced communist
government. Stories abound of 13-year-old
girls throwing mlotov cocktails at tanks.
For 4 days, the revolutio seemed to have
succeeded.|;

#$string =~ s/c*/butter/;
$string=~s/(d+)/"$1"/;

print $string;