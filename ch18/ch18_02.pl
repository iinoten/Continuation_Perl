{
    package Barnl
    sub new { bless [],shift}
    sub add { push @{shift()},shift }
    sub contents { @{shift()} }
    sub DESTROY {
        my $self = shift;
        print "$self is being destroyed....\n";
    }
}