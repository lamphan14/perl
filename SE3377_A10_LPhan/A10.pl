use strict;
use warnings;
my $guss = 6;
my $random_number = int(rand(200-100)) + 100;
my $count = 1;
print "Your name please: ";
my $name = <STDIN>;
chomp $name;
#open the file
open(my $fh, '>>', 'report.txt');
#print " '$random_number' ";
print "You Have 7 Gusses to Find the Number\n";
print "The game will stop on your victory or your 7th guess \n";
print "Enjoy the game.\n";
print "Enter a number between 100 and 200\n"; 
my $num = <STDIN>; #this will count as 1 turned.
chomp $num;
while( $guss > 0 )
{
if( $num == $random_number)
{
print ("Congratulations, $name. You Win the game in '$count' gusses\n");
last;
}
elsif( $num < $random_number )
{
print ("Higher: ");
}
else
{
print ("Lower: ");
}
my $num1 = <STDIN>;
chomp $num1;
$num = $num1;
$guss--;
$count++;
if($guss == 0)
{
print "Defeat\n";
}
}
print $fh " '$name' '$count'\n"; #print to the file the name of the user and the count.
close $fh;
print "Thank you for playing.\n";