package Runnable::Greet;
use feature qw( say );
use Moose;
with 'MooseX::Runnable', 'MooseX::Getopt';
has greeting => (
    is      => 'ro',
    isa     => 'Str',
    default => 'Hello',
);
sub run {
    my ( $self, $who ) = @_;
    say $self->greeting . ", $who!";
    return 0;
}
1;
