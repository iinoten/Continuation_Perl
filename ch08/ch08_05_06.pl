#ディレクトリファイルリファレンスの作成
opendir my $dh, '.' or die "Could not open directry: $!";

foreach my $file ( readdir( $dh ) ) {
    print "skipper, I found $file!\n";
}

#"skipper, I found .!"
#"skipper, I found ..!"
#"skipper, I found castaway.log!"
#"skipper, I found ch-8_05_03_01.pl!"
#"skipper, I found ch08_02.pl!"
#"skipper, I found ch08_03_01.pl!"
#"skipper, I found ch08_04.pl!"
#"skipper, I found ch08_05.pl!"
#"skipper, I found ch08_05_01.pl!"
#"skipper, I found ch08_05_02.pl!"
#"skipper, I found ch08_05_04.pl!"
#"skipper, I found ch08_05_05.pl!"
#"skipper, I found ch08_05_06.pl!"
