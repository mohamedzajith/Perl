#!/usr/bin/perl
use feature ":5.10";
$a = 10;
#print "Value of a = $a\n";
#print 'Value of a = $a\n';

$str="Perl Programming";
print "\u $str \n";
print "\U $str \n";
print "\l $str \n";
print "\L $str \n";

# Scallers

$age=25;
$name="Samantha";
print "$name age is $age\n";

#Arrays

@array=("A","100","\$","B","s","t","50");

print "\$array[0]= $array[0]\n";
print "\$array[1]= $array[1]\n";
print "\$array[6]= $array[6]\n";
print "\$array[4]= $array[4]\n";


#Hash Variables

%hash=('Sunday',0,'Monday',1,'Tuesday',2,'Wednesday',3);
 print "\$hash{'Sunday'} = $hash{'Sunday'}\n";
 
 
 
 # Length of the array
 @names = ('John Paul', 'Lisa', 'Kumar');@names = ('John Paul', 'Lisa', 'Kumar');
 @copy = @names;
$size = @names;

print "Given names are : @copy\n";
print "Number of names are : $size\n";



$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

# 377 octal, same as 255 decimal
$octal = 0377;

# FF hex, also 255 decimal
$hexa = 0xff;

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";






$str = "hello" . "world";    # Concatenates strings.
$num = 5 + 10;                  # adds two numbers.
$mul = 4 * 5;                   # multiplies two numbers.
$mix = $str . $num;             # concatenates string and number.

print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";

