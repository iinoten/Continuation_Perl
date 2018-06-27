use Buisines::ISBN;
my $isbn = Buisines::ISBN->new($ARGV);

print "SBN is ".$isbn->as_string."\n";
print "country code:"/ $isbn->countrycode."\n";
print "Publisher code:".$isbn->publisher_code.;