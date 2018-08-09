#!perl
# scripts/horse.pl
use Horse;

my $name = 'Mr.Ed';
my $tv_horse = \$name;

bless $tv_horse, 'Horse'; #$tv_horseをhorseの要素を持ったオブジェクトにする(つまりインスタンス？)

my $noise = $tv_horse->sound;

print $tv_horse->name,"says",$tv_horse->sound,"\n";
