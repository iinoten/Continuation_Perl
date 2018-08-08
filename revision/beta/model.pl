sub Cow::speak {
  print "a Cow goes mooo!\n";
}
sub Horse::speak {
  print "a Horse goes neigh!\n";
}
sub Sheep::speak {
  print "a Sheep goes baaah!\n";
}

my @pasture = qw(Cow Cow Horse Sheep Sheep);
foreach my $beast (@pasture) {
  $beast ->speak;
}
