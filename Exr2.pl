#!/usr/bin/perl
use feature ":5.10";
use strict;
use warnings;

constant PI=>3.14159265395;
print "Welcome to Perl!\n";

#Comments being with hash mark

#Scalar variable being with $
my $name="Chukkiriya";
my $age=32;
my $gpa=3.95;

#Array variables being with @

my @fruits=("Mango", "Banana","Jak");
$fruits[40]="Orange";

print $fruits[0],$fruits[2];
print "\n";
print $fruits[0].$fruits[40];
print "\n";
print $#fruits; # Length of the fruits array
print "\n";
say $#fruits; # Last index of the fruits array
$fruits[40]="Grapes";
say @fruits;


print "hell0";print "world";
print "\n";
say "hello2"; say "world2";