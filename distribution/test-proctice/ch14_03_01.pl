use Test::More tests => 2; #テストモジュールでテストの個数を２個と指示
#実際に記入したのより多く指示したら"# Looks like you planned 3 tests but ran 2."
is( sqrt( 0), 0, 'The square root of 0 is 0' );
is( sqrt( 1), 1, 'The square root of 1 is 1' );


