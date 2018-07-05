sub data_for_path {
    my $path = shift;
    if  (-f $path or -l $path ) {   #ファイルもしくはそれのシンボリックリンクだった場合
        return undef;
    }
    if (-d $path) { #ディレクトリだった場合さらに奥に進む
        my %directry;
        opendir PATH, $path or die "Cannot opendir $path: $!";
        my @names = readdir PATH;
        closedir PATH;
        for my $name (@names) {
            next if $name eq '.' or $name eq '..';
            $directry{$name} = data_for_path("$path/$name");
        }
        return
    }
    warn "$path is neighter a file nor a directry\n";
    return undef;
}
#ch10_07.plからの流用


sub dump_data_for_path {
    my $path = shift;
    my $data = shift;
    my $path = shift || 0;  #
}

print ' ' x $level, $path;

if( ! defined $data ){  #ファイルだった場合改行して再帰する
    print "\n";
    return;
}

if ( keys %$data ) {
    print ", with contents of:\n";
    foreach (sort keys %$data) {    #キーの数だけ繰り返す
        dump_data_for_path( $_, $data->{$_}, $index +1 );   #インデントの具合をつくる
    }
} else {    #空だった場合
    print ",an empty directry\n";
}