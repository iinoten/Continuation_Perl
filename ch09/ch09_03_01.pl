#ch09_03.plの正規表現にラベルをつけて追えるようにしたもの
use v5.10.1;

my %patterns =(
    Gilligan => qr/( ?:Willie )?Gilligan/,
    'Mary Ann' => qr/Mary Ann/,
    Ginger => qr/Ginger/,
    Professor => qr/(?:The )?Professor/,
    Skipper => qr/Skipper/,
    'A Howell' => qr/Mrs?.Howell/,
);

my $name = "Ginger";
my($match) = grep { $name =~ $patterns{$_} } keys %patterns;   
say "Matched $match!" if $match;     #"Matched Ginger!"