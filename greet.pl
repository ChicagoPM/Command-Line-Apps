#!/usr/bin/env perl
use strict;
use warnings;
use feature qw( say );
use Getopt::Long;
use Pod::Usage;

my %opt = (
    greeting => 'Hello',
);
GetOptions( \%opt,
    'greeting:s',
    'help|h',
);
pod2usage(0) if $opt{help};
pod2usage("ERROR: Must give someone to greet") if !$ARGV[0];

say "$opt{greeting}, $ARGV[0]!";

=head1 NAME

greet.pl - Say hello!

=head1 SYNOPSIS

    perl greet.pl [--greeting <greeting>] [<who>]
    perl -h|--help

=head1 ARGUMENTS

=head2 who

Who to greet. Defaults to "World".

=head1 OPTIONS

=head2 greeting

The greeting to use. Defaults to "Hello".

=head2 help|h

Display help and usage
