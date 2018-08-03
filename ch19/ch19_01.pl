package Horse;
use Moose;

has 'name' => ( is => 'rw' );   #読み書き両用
has 'color' => ( is => 'rw' );

no Moose;

__PACKAGE__->meta->make_immutable;

1;