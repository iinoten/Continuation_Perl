#!perl
# scripts/horse.pl
my $name = 'Mr.Ed';
my $tv_horse = \$name;

bless $tv_horse, 'Horse'; #いまのままだとそれぞれの馬が皆一緒のものになってしまうので
#\$nameでリファレンスを取りblessでHorseパッケージに入れる

my $noise = $tv_horse->sound;
