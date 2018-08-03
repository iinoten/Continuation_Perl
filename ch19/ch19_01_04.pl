package Animal;
use Moose::Role;
use namesplace::autoclean;

requires qw( sound default_color );

has 'name' => (is => 'rw' );
has 'color' => (
    is => 'rw',
    default => sub { shift->default_color }
);

sub speak {
    my $self = shift;
    print $self->name,"goes",$self->sound,"\n";
}

1;