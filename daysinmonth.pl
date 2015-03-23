#Create array
use feature ":5.10";
use strict;
use warnings;
my @one_to_ten=(1..10);
my $top_limit=25;
for (@one_to_ten,15,20..$top_limit)
{
	say;
}

#Days in months
 my %days_in_month=("January"=>31,"March"=>31,"May"=>31,,"July"=>31,"Auguest"=>31,"October"=>31,"December"=>31); # array ha smonths which have 31 days
 my @short_month=("April","June","September","November");  # define month which have 30 days
 
 my $m;
 for $m (@short_month)
 {
  $days_in_month{$m}=30; # add 30 days months in the previous array
 }
 
 $days_in_month{"February"}=29; # add February in the previous array
 my $i;
 for $i(sort(keys %days_in_month))
 {
  print "$i has $days_in_month{$i} days.\n"; # print months with days
 }
 

  #Array of characters
  
  my @a_text_line=qw/"t    h e q u i c k s l y f o x j u m p e d o v e r a l a z y b r o w n d o g"/;
 # my $c='q';
  
  say $a_text_line[0];
 