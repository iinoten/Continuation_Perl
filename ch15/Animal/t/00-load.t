#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Mouse' ) || print "Bail out!\n";
}

diag( "Testing Mouse $Mouse::VERSION, Perl $], $^X" );
