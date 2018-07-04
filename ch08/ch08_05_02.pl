use IO::Scalar;

my $string_log = '';
my $scalar_fh = IO::Scalar->new(\$string_log);

print $scalar_fh "The Howells' private beach club is closed\n";#$scalar_fhにログメッセージを書き込んでいく

