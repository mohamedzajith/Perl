use feature ":5.10";
use strict;
use warnings;

my
 $a=5;
say $a++;
say $a+=10;
say $a/=2;


my $s="8";
say $s+"1"; # "+" only do numerical operations ,"." work a sa connector"
say $s+1;
say $s."1";
say $s.1;

use constant PI=>3.14159265395;
say "A value for Pi is".PI;