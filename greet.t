use Test::More;
use Capture::Tiny qw( capture );
use greet;
my ( $stdout, $stderr, $exit ) = capture {
    greet::main( {}, [ "Chicago.PM" ] );
};
is $stdout, "Hello, Chicago.PM!\n", 'correct greeting';
is $exit, 0, 'exit code: success';
done_testing;
