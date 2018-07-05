chdir;

my @sorted = map $_->[0],   #書き換え
    sort { $a->[1] <=> $->[1] } #比較
    map [$_, -s$_], glob '*';   #-s$_でサイズを取得

foreach ( @sorted ){
    print "$_\n";
}