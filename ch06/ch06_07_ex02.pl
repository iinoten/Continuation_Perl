use JSON;

my $all = "**allmachines**";
my $data_files = "total_bytes.json";

my $total_bytes;
if (-e $data_file) {
    local $/;
    open my $fh,'<:raw', $data_file;
    $json_text = <$fh>;
    $total_bytes = decode_json($json_text);
}

while (<>) {
    next if /^#/;
    my ($source, $destination, $bytes) = split;

    $total_bytes->{$source}{$destination} += $bytes;
    $total_bytes->{$source}{$all} += $bytes;
}

{
    open my $fh, '>:utf8', $data_file;
    print $fh to_json( $total_bytes, { pretty => 1} );
}

foreach my $source (sort keys %$total_bytes ) {
    print "$source\n";
    my $dest_hash = $total_bytes->{$source};
    foreach my $dest (sort keys %$dest_hash){
        print "$dest $dest_hash->{$dest}\n";
    }
}