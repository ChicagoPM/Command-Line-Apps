#!/usr/bin/env perl
use strict;
use warnings;
use feature qw( say );
while ( my $line = <STDIN> ) {
    my @emails = ( $line =~ /\b(\S+\@\S+)\b/g );
    say for @emails;
}
