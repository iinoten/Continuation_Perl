use Horse;
my $name = 'Mr.Ed';
my $tv_horse = \$name;

bless $tv_horse,'Horse';

my $noise = $tv_horse->sound;

my $tv_horse = Horse->named('Mr.Ed');
print $tv_horse."\n";