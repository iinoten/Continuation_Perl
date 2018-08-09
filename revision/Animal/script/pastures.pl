use Cow;
use Horse;
use Sheep;

my @pasture = qw(Cow Cow Horse Horse Sheep);
foreach my $beast (@pasture) {
  no strict 'refs'; #シンボリックリファレンス($$hogeとか)を使えなくするようにする
  &{$beast."::speak"};
}
