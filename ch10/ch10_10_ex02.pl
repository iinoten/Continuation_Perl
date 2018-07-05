use Benchmark qw(timethese);    #コードの実行時間がわかる

chdir;
my @files = glob '*';
print 'There are '.@files."files to compare\n";

my $ordinary = sub {
    my @sorted = sort { -s $a <=> $b } @files;
}

my $transform = sub {
    my @sorted = map $_->[0],
    sort { $a->[1] <=> $->[1] }
    map [$_, -s$_], glob '*';
}

timethese( -2,{
    Ordinary => $ordinary,  #改変前
    Schwartizian => $transform, #改変後
})