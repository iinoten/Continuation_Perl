use Cow;
use Horse;
use Sheep;

my @pasture = qw(Cow Cow Horse Sheep Sheep);
foreach my $beast (@pasture) {
  $beast -> speak;  #矢印呼び出しをつかうことでno strict 'refs'を使わなくても動くようになった
  #'ref'は'reference'の略？
}
