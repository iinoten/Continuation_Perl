use v5.10;
my @array = qw(a b c d e f 1 2 3 );

print sort {
    state $n = 0;
    print $n++, ":a[$a] b[$b]\n";
    $a cmp $b;
} @array;

print "@array\n";