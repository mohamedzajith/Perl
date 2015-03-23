use strict;
use warnings;

my $string = q|
In 1956, Hungarians rose up against
their Russian-influenced communist
government. Stories abound of 13-year-old
girls throwing molotov cocktails at tanks.
For 4 days, the revolution seemed to have
succeeded.
|;

sub fix_numbers 
{
	# Get the subroutine's argument.
	my $arg = shift;
	
	# Hash of stuff we want to replace.
	my %replace = (
		"13" => "thirteen",
		"4" => "four",
	);
	
	# See if there's a replacement
	# for the given text.
	my $text = $replace{$arg};
	
	if(defined($text)) 
	{
		# Got a replacement; return it.
		return $text;
	}
	
	# No replacement; return original text.
	return $arg;
}

sub main
{
	$string =~ s/(d+)/fix_numbers($1)/eig;

	print $string;
}

main();
