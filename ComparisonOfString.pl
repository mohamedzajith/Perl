# String Comparison:
# Usually eq should be used for string comparison
# However, if there is no ambiguity whether compared items are
# String of characters or string of numerals
# ==can also be used.
use feature ":5.10";
use strict;
use warnings;
my
$yes_no="no";
if($yes_no eq"yes") #there is no ambiguity
{
	print "You said yes!\n";
}
else
{
	print "You said no!\n";
}
my $a=5;
 if($a=="5"){print "Numeric equality!\n";}
 if($a eq "5"){print "String equality!\n";}
 if("$a" eq "5")
 {
  print ">>>>String equality!\n";
 }
 else
 {
  print ">>>>Numeric equality!\n";
 }
 
#More on String  and substring function

$a="Welcome to Perl!\n";
print substr($a,0,7); #Welcome
print "\n";
print substr($a,7);	#"to Perl!\n"
print "\n";
print substr($a,-6,4); #"Perl"
print "\n";

$a="Welcome to Java!\n";
substr($a,11,4)="Perl"; # a is now "Welcome to Perl!\n";
print  substr($a,0);
print "\n";


substr($a,7,3)=" "; # ... "Welcome Perl!\n";
print  substr($a,0);
print "\n";

substr($a,0,0)="Hello. "; # .. "Hello. Welcome Perl!\n";print  substr($a,0);
print "\n";

print substr("ABCDEFGHIJK",7);
print "\n";

#substring($a,m,n) m=start index  n=number of characters
#substring($a,m) m=start at m
#\n count only one

