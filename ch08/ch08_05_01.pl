use IO::File;

my $fh = IO::File->new( '> castaways.log' )
 or die "Could not create filehandle: $!";