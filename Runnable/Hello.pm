package Runnable::Hello;
use feature qw( say );
use Moose;
with 'MooseX::Runnable';
sub run {
    my ( $self ) = @_;
    say "Hello, World!";
    return 0;
}
1;
