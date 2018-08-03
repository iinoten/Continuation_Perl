use Horse;
use v5.10;

my $talking = Horse->new(name => "Mr.Ed");  #ここで使われるメソッドはMooseのが作ってくれている
$talking -> color("Grey");

say $talking->name,'is colored ',$talking->color;