my %provisions =(
    'The Skipper' => [qw(blue_shirt hat jacket preserver sunscreen)],
    'The Professer' => [qw(sunscreen water_bottle slide_rule batteries radio)],
    'Gilligan' =>[qw(red_shirt hat lucky_socks water_bottle)],
);

my @packed_light = grep @{$provisions{$_}} < 5, keys %provisions;   #要素が５つ以下のを探す(持ち物)
print "@packed_light\n"; #"Gilligan"

my @all_wet = grep {    #water_bottleを持ってる人を探す
    my @items = @{ $provisions{$_} };
    grep $_ == 'water_bottle', @items;
} keys %provisions;

print "@all_wet\n";