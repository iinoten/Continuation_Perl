package RaceHorse;
use parent qw(Horse);

sub named {
    my $self = shift -> SUPER::named(@_);
    $self->{$_} = 0 for qw(wins places shows losses);
    $self;
}