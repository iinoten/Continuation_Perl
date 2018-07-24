use strict;
use warnings;

use Test::More tests => 6;

BEGIN {
    use_ok( 'Animal' ) || print "Bil out!";
}
diag("Testing Animal $Animal::VERSION,Perl $], $^X" );

ok( defined &Animal::speak, 'Animal::speak is defined' );
ok( defined &Animal::sound, 'Animal::sound is defined' );
#これらのメソッドが定義されているか(定義されていなきゃならない)

eval { Animal->sound() }or my $at = $@;
like( $at,qr/You must/,'sound dies with a message');

eval { Animal->speak() }or my $at = $@;
like($at,qr/You must/,'speak() dies with a message' );

{
    package Foofle;
    use parent qw(Animal);
    sub sound {'foof'}

    is(
        Foofle->speak,
        "AFoofle goes foof!\n",
        'An Animal subclass does the right thing'
    );
}