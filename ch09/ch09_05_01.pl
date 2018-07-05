use v5.10.1;
use Regexp::Common qw (URI);

while (<>) {
    print if /$RE{URL}{HTTP}/;
}