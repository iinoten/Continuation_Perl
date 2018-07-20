use Test::More;
BEGIN {use_ok('My::List::Util')}

ok( defined &My::List::Util::shuffle, 'shuffle() is defined' );

{
    my @shuffled = My::List::Util::shuffle();
    is ( scalar @shuffled,0,'No args returns an empty list' );
}

{
    my @array=1 .. 10;
    my @shuffled = My::List::Util::shuffle( @array );
    is (scalar @array,scalar @shuffled,
    "The output list is the same size");
    isnt("@array","@shffled","The list is shuffled" );
}
done_testing;