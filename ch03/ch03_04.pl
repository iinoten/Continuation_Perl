#doブロック
my $res = $ARGV[0];
my $bowler = do {
    if ($res =~ /bowler/) { 'bowler' }
    elsif ($res =~ /Mary/) { 'Mary' }
    else { 'The professer' }
};
print "$bowler\n";