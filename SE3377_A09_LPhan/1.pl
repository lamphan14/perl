#!/usr/bin/perl
#Lam Phan
#CS3377.0W2
#Prof. Kapoor
package main;
use strict;
use warnings;
use diagnostics;
print"----------------------------------------------------------\n";
print "Question 1: Equation \n";
my $x = 100;
print ("x= 100\n");
print("y= 2 * x + 5\n");
my $y = 2*$x +5;
print ("y= ");
print $y;
print ("\n");
print"----------------------------------------------------------\n";
print "Question 2: Random numbers \n";
my $n1 = -10;
my $n2 = 10;
print ("Number 1 is: -10\n");
print ("Number 2 is: 10\n");
print ("Create 2 random numbers and see if they are equal\n");
my $rand1= int(rand($n2-$n1)+$n1);
my $rand2= int(rand($n2-$n1)+$n1);
	print ("Random number 1 is: ");
	print $rand1;
	print ("\nRandom number 2 is: ");
	print $rand2;
if ($rand1 == $rand2) {
	print ("\nMatch Found!!!\n");
	}
else {
	print "\nDifferent numbers!!! \n";
	}
print"----------------------------------------------------------\n";
print "Question 3: Sum of Square \n";
my $number1 = 2;
my $number2 = 3;
print "First number is: ";
print $number1;
print "\nSecond number is: ";
print $number2;
my $square = $number1 * $number1 + $number2 * $number2;
print "\nThe sum of their square is: ";
print $square;
print"\n----------------------------------------------------------\n";
print "Question 4: Array \n";
my @array1 = (1,3,5);
my @array2 = (2, 4, 6);
print "Array 1 has elements: ";
print @array1;
print "\nArray 2 has elements: ";
print @array2;
my @merge = (@array1, @array2);
print "\nThe new merge array is:  @merge\n";
print "The middle 3 numbers are: @merge[1..3] ";
print "or @merge[2..4]\n ";
print"----------------------------------------------------------\n";
print "Question 5: Hash \n";
my %x = (1 => 'Mage',
2 => 'Priest' ,
3 => 'Hunter',
);
my @i = @x{1, 2, 3} ;
print " My hash is: @i \n";
print"----------------------------------------------------------\n";
print "Question 6: if else compares 3 words entered by users \n";
print "Enter word 1: ";
my $word1 =<STDIN>;
chomp $word1;
print "Enter word 2: ";
my $word2 =<STDIN>;
chomp $word2;
print "Enter word 3: ";
my $word3 =<STDIN>;
chomp $word3;
print "Your word 1 is: '$word1'\n";
print "Your word 2 is: '$word2'\n";
print "Your word 3 is: '$word3'\n";
print "Now ready to compare:\n";
if($word1 eq $word2 and $word1 eq $word3)
{
	print "Word 1, 2 and 3 are all Matched!!!";
}
elsif ($word1 eq $word2)
{
	print "Word 1 and word 2 are Matched!!!";
} 
elsif ($word1 eq $word3)
{
	print "Word 1 and word 3 are Matched!!!";
}
elsif($word2 eq $word3)
{
	print "Word 2 and word 3 are Matched!!!";
}

else
{
	print "No word is matched ";
}
print"\n----------------------------------------------------------\n";
print "Question 7: use while loop to print 99 random numbers to a file \n";
my $max = 99;
my $count =0;
open (my $fh, '>>' , 'Write_Num.txt');
while ($count <= $max)
{ 
	my $random_num = int(rand($max));
	print "$random_num \n" ; #print on the terminal
	print $fh "$random_num \n"; #print to the file
	$count++;
}
print"----------------------------------------------------------\n";
print "Question 8: use subroutine to get 2 random numbers and sum of their square.\n";
my $r1 = -10;
my $r2 = 10;
get_random_numbers($r1, $r2);
sub get_random_numbers{ 
my $x1 = shift;
my $x2 = shift;
my $random1= int(rand($x2-$x1)+$x1);
my $random2= int(rand($x2-$x1)+$x1);
print "Random number 1 is: $random1 \n" ;
print "Random number 2 is: $random2 \n";
my $square_then_sum = $random1*$random1 + $random2*$random2;
print "The square and sum of the two numbers is: $square_then_sum\n";
}
print"----------------------------------------------------------\n";
