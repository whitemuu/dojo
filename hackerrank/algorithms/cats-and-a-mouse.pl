#!/usr/bin/perl

use strict;
use warnings;

# Complete the catAndMouse function below.
sub catAndMouse {
    my ($x, $y, $z) = @_;
    return "Cat A" if abs($x - $z) < abs($y - $z);
    return "Cat B" if abs($x - $z) > abs($y - $z);
    "Mouse C"
}

open(my $fptr, '>', $ENV{'OUTPUT_PATH'});

my $q = <>;
$q =~ s/\s+$//;

for (my $q_itr = 0; $q_itr < $q; $q_itr++) {
    my $xyz = <>;
    $xyz =~ s/\s+$//;
    my @xyz = split /\s+/, $xyz;

    my $x = $xyz[0];
    $x =~ s/\s+$//;

    my $y = $xyz[1];
    $y =~ s/\s+$//;

    my $z = $xyz[2];
    $z =~ s/\s+$//;

    my $result = catAndMouse $x, $y, $z;

    print $fptr "$result\n";
}

close $fptr;
