#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'myAnimal' ) || print "Bail out!\n";
}

diag( "Testing myAnimal $myAnimal::VERSION, Perl $], $^X" );
