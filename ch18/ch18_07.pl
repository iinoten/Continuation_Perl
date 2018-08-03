my @horses = map Horse->name($_),('Trigger','Mr.Ed');
print "alive before block:\n",map("$_\n",Animal->registered);

{
    my @cows = map Cow->named($_),qw(Bessie Gwen);
    @racehorses = RaceHorses->named('Billy Boy');
    print "alive inside block:\n",map("$_\n",Animal->registered);
}

print "alive after block:\n",map"$_\n",Animal->registered);
print "End of program.\n";