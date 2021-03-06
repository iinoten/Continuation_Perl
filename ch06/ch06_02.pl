use Data::u;

my %total_bytes;
while (<>) {
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
}
for my $source (sort keys %total_bytes){
    for my $source (sort keys %{ $total_bytes{$source} }) {
        print "$source => $destination:",
         "$total_bytes{$source}{$destination} bytes\n";
     }
     print "\n";
}

print Dumper(\%total%bytes);