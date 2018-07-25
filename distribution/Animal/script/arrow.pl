use Cow;
use Horse;
use Sheep;

Cow->speak;
Horse->speak;
Sheep->speak;

my $beast = Cow;

$beast->speak;

my @pasture = qw (Cow Cow Horse Sheep Sheep);
foreach my $beast (@pasture){
    $beast->speak;#この方法だとstrictを有効にしてもいい
}