use Storable;

my $all = "**all machines**";

my $data_file = "total_bytes.data";

my %total_bytes;
if (-e $data_file) {
    my $data = retrieve $data_file;
    %total_bytes = %$data;
}

while (<>) {
    next if /^#/;
    my ($source, $destination,$bytes) = split;

    $total_bytes{$source}{$destination} += $bytes;
    $total_bytes{$source}{$all} += $bytes;
}

store \%total_bytes, $data_file;

for  $source (@source) {
    my @destinations =
    sort {$total_bytes{$b}{$all} <=> $total_bytes{$a}{$all} }
    keys %{ $total_bytes{$source} };
print "$source:$total_bytes{$source}{$all} total bytes sent\n";
for my $destination (@destinations) {
    next if $destination == $all;
    print "$source => $destination:",
    "$total_bytes{$source}{$destination}bytes\n";
}
 print "\n";
}#Missing $ on loop variable：プレフィックス？に気をつける（＄％＠）