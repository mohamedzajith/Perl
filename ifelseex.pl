use feature ":5.10";

#?:Operator
$weather="hot";
$report=($weather eq "cool") ? "It is a rainy day":"It is a sunny day";
print "Now weather is $weather since $report\n";

#arithmetic Operators
$a=100;
$b=41;
$c=$a+$b;
$d=$a-$b;
$e=$a*$b;
$f=$a/$b;
$g=$a%$b;

print"add $c\n";
print "sub $d\n";
print "mul $e\n";
print "div $f\n";
print "mod $g\n";

#String operators

$a="Train";
$b="Rain";

$c=($a lt $b);
$d=($a gt $b);
$e=($a le $b);
$f=($a ge $b);
$g=($a eq $b);
$h=($a ne $b);
$i=($a cmp $b);print" $c\n";
print " $d\n";
print " $e\n";
print " $f\n";
print " $g\n";
print " $h\n";
print " $i\n";

#assigment Opetrators

$a = 10;
$b = 20;

print "Value of \$a = $a and value of \$b = $b\n";

$c = $a + $b;
print "After assignment value of \$c = $c\n";

$c += $a;
print "Value of \$c = $c after statement \$c += \$a\n";

$c -= $a;
print "Value of \$c = $c after statement \$c -= \$a\n";

$c *= $a;
print "Value of \$c = $c after statement \$c *= \$a\n";

$c /= $a;
print "Value of \$c = $c after statement \$c /= \$a\n";

$c %= $a;
print "Value of \$c = $c after statement \$c %= \$a\n";

$c = 2;
$a = 4;
print "Value of \$a = $a and value of \$c = $c\n";
$c **= $a;
print "Value of \$c = $c after statement \$c **= \$a\n";