#!/usr/bin/env perl
package modulino_template;
use strict;
use warnings;
use Getopt::Long qw( GetOptionsFromArray );
use Pod::Usage;

sub main {
    my ( $opt, $argv ) = @_;
    pod2usage(0) if $opt->{help};
    ### Your code here
    return 0;
}

if ( !caller(0) ) {
    my %opt;
    GetOptionsFromArray( \@ARGV, \%opt,
        ### Your options here
        'help|h',
    );
    exit main( \%opt, \@ARGV );
}

1;

=head1 NAME

modulino_template.pm - Do something!

=head1 SYNOPSIS

    perl modulino_template.pm [--option <option_argument>] <argument>
    perl modulino_template.pm -h|--help

=head1 ARGUMENTS

=head2 argument

A description of the argument.

=head1 OPTIONS

=head2 option <option_argument>

A description of the option.

=head2 help|h

Display help and usage

=head1 LICENSE AND COPYRIGHT

Copyright 2013 Your Name <your_name@example.com>

This software may be used and redistributed under the same terms as Perl itself.
