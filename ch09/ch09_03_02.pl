#ch09_03.plの正規表現にラベルをつけて追えるようにしたものにList::Utilをつかってさらに改変したもの
use v5.10.1;
use List::Utill qw(first);

my %patterns =(
    Gilligan => qr/( ?:Willie )?Gilligan/,
    'Mary Ann' => qr/Mary Ann/,
    Ginger => qr/Ginger/,
    Professor => qr/(?:The )?Professor/,
    Skipper => qr/Skipper/,
    'A Howell' => qr/Mrs?.Howell/,
);

my $name = "Ginger";
my($match) = first { $name =~ $patterns{$_} } keys %patterns;   #最初に一致した値をかえす
say "Matched $match!" if $match;     #"Matched Ginger!"