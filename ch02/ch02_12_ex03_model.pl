use Busines::ISBN;
my $isbn = Business::ISBN->new($ARGV[0]);

print "SBN is ".$isbn->as_string."\n";
print "country code:"/ $isbn->countrycode."\n";
print "Publisher code:".$isbn->publisher_code.;