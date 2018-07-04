#log_file_sampleから人それぞれでわけたファイルを作る

my %output_handles;

while (<>) {
    unless (/^([^:]+):/) {  #先頭が：ではなくそのあとが：なもの "Mr. Howell: 1 crab" とか？
        warn "ignoring the line with missing name: $_";
        next;
    }
    my $name = lc $1;   #小文字に変換する
    unless( $output_handles{$name} ) {
        open my $fh, '>', "$name.info"  #それぞれの名前を使ったファイルを作成
         or die "Cannot create $name.info:$!";
        $output_handles{$name} = $fh;
    }

    print { $output_handles{$name} } $_;
}