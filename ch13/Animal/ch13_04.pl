use Animal;
our @ISA = qw(animal);
sub sound { "mooo" }
Animal::speak('mooo');
