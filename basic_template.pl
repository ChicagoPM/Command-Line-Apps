#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;
my %opt;
GetOptions( \%opt,
    'help|h',
);
pod2usage(0) if $opt{help};

### Put your code here

=head1 NAME

    main.pl - Do something mainly

=head1 SYNOPSIS

    main.pl [--option <option_argument] <argument>
    main.pl --help|-h

=head1 ARGUMENTS

=head2 argument

A description of the argument.

=head1 OPTIONS

=head2 option <option_argument>

A description of the option

=head2 help|h

Display help and usage

=head1 EXIT CODES

=head2 1

An error occurred

=head1 LICENSE AND COPYRIGHT

Copyright 2013 Your Name <your_name@example.com>

This software may be used and redistributed under the same terms as Perl itself.

