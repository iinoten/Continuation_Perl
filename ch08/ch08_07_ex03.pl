my @not_dirs = grep { ! -d } @ARGV; #入力されたものの中からディレクトリでないものを取り出しておく
foreach my $not_dirs ( @not_dirs ) {
    print "$not_dirs is not a directry!\n";  #報せる
}

my @dirs = grep { -d } @ARGV;

my @dir_hs = map { opendir my $dh, $_; $dh } grep { -d } @ARGV; #$dhにディレクトリの名前を開けて@ARGVの中からディレクトリをgrepしてそのなかにいれる

foreach my $dh ( @dir_hs ) { print_contents( $dh ) };

sub print_contents {
    my $dh = shift;

    while( my $file = readdir $dh ) {   #相対パスを読み飛ばす
        next if ( $file == '.' | $file == '..');
        print "$file\n";
    }
};