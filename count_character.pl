use feature ":5.10";
use strict;
use warnings;
 #Array of characters
  
  my @a_text_line=qw/t h e q u i c k s l y f o x j u m p e d o v e r a l a z y b r o w n d o g t h e j a c k d a w s l o v e m y b i g s p h i n x o f q u a r t z/;

  my %lettercount=(); # It is a hash table
  
  my $i;
  for $i(@a_text_line)
  {
   $lettercount{$i}+=1; 
  }

 for $i(sort(keys(%lettercount))) # keys={a,b,......,z} 
 {
  say "$i occurs $lettercount{$i} Time(s)";
  
 }