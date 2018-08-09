#!perl
use Horse;

my $tv_horse = Horse->named( 'Mr.Ed' );
$tv_horse->set_color( 'black-and-white' );
print $tv_horse->name, ' is colored ',$tv_horse->color, "\n";

