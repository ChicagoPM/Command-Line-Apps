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
    die "Must give someone to greet!\n\n" . $self->usage unless $who;
    say $self->greeting . ", $who!";
    return 0;
}
1;
