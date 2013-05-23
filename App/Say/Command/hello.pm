package App::Say::Command::hello;
use feature qw( say );
use App::Cmd::Setup -command;
sub execute {
    my ( $self, $opt, $args ) = @_;
    say "Hello, World!";
    return 0;
}
1;
