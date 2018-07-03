my @x = qw(23 43 66 77 88 89);
my @y = qw(21 54 54 98 88 78);

my @bigger_indices = grep {
    if ($_ > $#y or $x[$_] > $y[$_]){   #"$#y"で配列yの最後の要素数をとる
        1;
    } else {
        0;
    }
} 0..$#x;   #0からxの要素最後まで
my @bigger = @x[@bigger_indices];

foreach (@bigger){
    print "$_  ";     #"23  66  89"  
}
print "\n";