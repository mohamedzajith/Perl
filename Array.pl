# Example for Arrays
#!/usr/bin/perl
use feature ":5.10";

@months=("July","August","September");
#print @months;
#print months[0]; # This is print July
#print months[2]; # This is print September



# Example for Hash Table

% days_in_summer=("July"=>31,"August"=>31,"September"=>30);

#print $days_in_summer{"June"}=30;
#print "\n";
#print % days_in_summer;
#print "\n";


# Add element in the hash table

%days_in_months=();
 $days_in_months{"January"}=31;
 $days_in_months{"April"}=31;
 $days_in_months{"November"}=30;
 $days_in_months{"February"}=28;
 
 
 print %days_in_months;

