package App::Say::Command::greet;
use feature qw( say );
use App::Cmd::Setup -command;
sub opt_spec {
    return (
        [ 'greeting:s' => 'A greeting. Defaults to "Hello"' ],
    )
}
sub execute {
    my ( $self, $opt, $args ) = @_;
    $opt->{greeting} ||= "Hello";
    say "$opt->{greeting}, $args->[0]";
    return 0;
};
1;
