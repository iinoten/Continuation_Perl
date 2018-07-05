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