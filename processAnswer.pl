#!/usr/bin/env perl

use IO::File;
use Data::Dumper;

my $file = $ARGV[0];

my $fh = IO::File->new($file);

my %transitions;
for ('AG', 'GA', 'CT', 'TC') {
    $transitions{$_} = 1;
}
my $ti = 0;
my $tv = 0;

while (my $line = $fh->getline) {
    chomp $line;
    my ($ref, undef, $alt, $count) = split " ", $line;
    if (uc($ref) eq "N") {
        next;
    }
    if (exists($transitions{uc("$ref$alt")})) {
        $ti += $count;
    } else {
        $tv += $count;
    }
}

print "Ti/Tv ratio:  ".($ti/$tv)."\n";
