use Cow;
use Horse;
use Sheep;

my @pasture = qw (Cow Cow Horse Sheep Sheep);
foreach my $beast (@pasture){
    no strict 'refs';
    &{$beast."::speak"};
}
