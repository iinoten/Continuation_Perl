my %total_bytes;
while (<>) {
    next if /^#/;
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;  #$total_bytesにcoconet.datから読み込んだのを入れる
}

foreach my $source ( sort keys %total_bytes ) { #値をソートする
    print "$source\n";
    my $dest_hash = total_bytes{$source};
    foreach my $dest ( sort keys %$dest_hash ) {
        print "$dest $dest_hash->{$dest}\n";    #$destの部分を書き換える
    }
}