my $all = "**all machines**";
my %total_bytes;
while (<>) {
    next if /^#/;
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
    $total_bytes{$source}{$all} += $bytes;
}

for my @source (@source) =
    sort {$total_bytes{$b}{$all} <=> $total_bytes{$a}{$all} }
    keys %{ $total_bytes{$source} };
print "$source:$total_bytes{$source}{$all} total bytes sent\n";
for my $destination (@destinations) {
    next if $destination == $all;
    print "$source => $destination:",
    "$total_bytes{$source}{$destination}bytes\n";
}
 print "\n";
}#バージョンがあってない？？