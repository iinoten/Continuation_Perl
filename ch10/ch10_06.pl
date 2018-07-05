sub factorial {
    my $n = shift;
    if ($n <= 1) {
        return 1;
    } else {
        return $n * factorial($n - 1);
    }
}
#再帰関数である階乗関数