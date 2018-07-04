use IO::Tee;
use v5.8;

my $fh;
my $scalar;

print "please choose and type where to send the way\n";
print " file / scalar / tee \n";

my $type = <STDIN>;

if ( $type =~ /^s/ ) {
    open $fh, '>', \$scalar;
} elsif ( $type =~ /^f/ ) {
    open $fh, '>', "$0.out";
} elsif ( $type =~ /^t/ ) {
    open my $file_fh, '>', "$0.out"
     or die "could not oprn $0.out: $!";
    open my $scalar_fh, '>', \$scalar;
    $fh = IO::Tee->new( $file_fh, $scalar_fh );
}

my $date = localtime;
my $day_of_week = (localtime)[6];

print $fh << "HERE";

This is run $$
The date is $date
The day of week is $day_of_week
HERE

print STDOUT << "HERE" if $type =~ m/^[st]/i;
Scalar contains:
$scalar
HERE