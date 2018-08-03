package Animal;
use Mouse::Role;

requires qw(sound);
has 'name' => ( is => 'rw' );
has 'color' => ( is => 'rw' );

sub speak {
    my $self = shift;
    print $self->name, "goes",$self->sound,"_n";
    }

1;