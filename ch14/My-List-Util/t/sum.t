use Test::More;
BEGIN {use_ok( 'My::List::Util' ) }

ok(defined &My::List::Util::sum,
    'sum() is defined');
is(My::List::Util::sum(1,2,3 ),6,
    '1+2+3is six');
is(My::List::Util::sum(1,2,3),6
    '1+2+3 as strings is six');
done_testing();

