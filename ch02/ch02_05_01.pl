use Math::BigInt;

my $value = Math::BigInt->new(2);
$value ->bpow(1000);
print $value->bstr,"\n";