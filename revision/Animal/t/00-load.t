#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Animal' ) || print "Bail out!\n";  #'Animal'モジュールをロードできるかを見る
}

diag( "Testing Animal $Animal::VERSION, Perl $], $^X" );
