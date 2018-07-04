#無名関数内でその無名関数をつかう
use v5.10;

my $countdown;
$countdown = sub {
    state $n = 5;
    return unless $n > -1;
    say $n--;
    $countdown->();
};

$countdown->();