use feature ":5.10";


@array=qw/This is perl program for array/;
$len=scalar @array;

	
	print "$array[0]\n";
	print "$array[5]\n";
	print "$array[7]\n";
	print "$array[-2]\n";
print "length of array= $len \n";

#Sequential Array

@var1=(a..z);
@var2=(99..110);
@var3=(10..20);

print "@var1\n";
print "@var2\n";
print "@var3\n";
$size=@array;


print "Maximum index of \@array = $#array\n";
print "Size of the \@array is = $size\n";


q^

@days=("Sunday","Monday","Tuesday");
push(@days,"Wednesday");
print "new array is= @days\n";
pop(@days);
print "After poping new array is= @days\n";
shift(@days);
print "After shifting new array is= @days\n";
unshift(@days,"Thursday");
print "After unshifting new array is= @days\n";


#Slicing of Arrays

@name=("Sam","Thara","Jeya","Muthu","Jesi","Thanu","Vinu","Jude");

print @name[2,5,1,0];



# Replacing Array elements
@DNA = qw/A T T T G G G A A T A T C A C C A A /;
 print "Before- @DNA \n";
 @REP=("U" ,"U" ,"U");
@RNA=splice(@DNA, 1,3, @REP);
 print "After- @DNA \n";
 
 
# Transform Strings to array
$str="The--Fat--Cat--Sat--On--The--mat";
@string=split('--',$str);
print "@string\n";
print "$string[2]\n";


$string1=join('--',@string);
print $string1;


#Sorting Arrays
@sort=qw/computer apple storage pen laptop /;
print "Before- @sort\n";
@sort=sort(@sort);
print "After- @sort\n";




#$[ special character
 $[=1;
 print "$sort[1]\n";
 print "$sort[0]\n";
 print "$sort[2]\n";
 
 


 
   
   
#Searching Elts in array


$var=(12,3,4,7,9)[5];
print "$var\n";
@list=(12,3,4,7,9)[1..3];

print "@list\n";


^
