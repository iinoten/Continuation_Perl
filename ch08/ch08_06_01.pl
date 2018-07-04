use v5.6;
use IO::Dir;

my $dir_fh = IO::Dir->new( '.' )
 or die "Could not open dirhandle: $!\n";

while ( defined ( my $file = $dir_fh->read ) ) {
    print "Skipper, I found $file!\n";
}