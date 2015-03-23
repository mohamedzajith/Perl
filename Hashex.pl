use feature ":5.10";

#Creating Hash
$data{'January'}=31;
$data{'February'}=28;
$data{'March'}=31;

%data1=('January',31,'February',28,'March',31);
#%data1=('January'=>31,'February'=>28,'March'=>31);

#Accessing Hash elements
print "$data{'January'}\n";
print "$data{'February'}\n";

#Slicing of Hash

@slice=@data1{'January','March'};
print "\@ slice= @slice \n";

#Extracting Keys and Values

@keys=keys %data1;
print "\$keys[0]=$keys[0]\n";
print "\$keys[1]=$keys[1]\n";
print "\$keys[2]=$keys[2]\n";


@values=values %data1;
print "\$values[$keys[0]]=$values[0]\n";
print "\$values[$keys[1]]=$values[1]\n";
print "\$values[$keys[2]]=$values[2]\n";


#Checking for existence

if(exists($data{'December'}))
{
	print "Days in January $data{'January'}\n";
}
else
{
	print "Not avilable\n";
}

#Get size of the Hash
%letters=('A',1,'B',2,'C',3);
#@keys=keys %letters;
@values=values %letters;
#$size=@keys;
$size=@values;
print"Size of the \%letters is $size \n";

$data{'April'}=30;
@keys=keys %data;
$size=@keys;
print "After add- $size\n";

delete $data{'February'};
@keys=keys %data;
$size=@keys;
print "After delete- $size\n";