#IO::Pipe
open my $pipe, '|', $command
 or die "Could not open filehandle: $!";

while (<$pipe>){
    print "Read: $_";
}