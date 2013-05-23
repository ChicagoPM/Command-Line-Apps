#!/usr/bin/env perl
package greet;
use strict;
use warnings;
use feature qw( say );
use Getopt::Long qw( GetOptionsFromArray );
use Pod::Usage;

sub main {
    my ( $opt, $argv ) = @_;
    pod2usage(0) if $opt->{help};
    pod2usage("ERROR: Must give someone to greet") if !$argv->[0];
    $opt->{greeting} ||= "Hello";
    say "$opt->{greeting}, $argv->[0]!";
    return 0;
}

if ( !caller(0) ) {
    my %opt;
    GetOptionsFromArray( \@ARGV, \%opt,
        'greeting:s',
        'help|h',
    );
    exit main( \%opt, \@ARGV );
}

1;

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
