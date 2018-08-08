{ package Animal;
  sub speak {
    my $class = shift;
    print "a $class goes ", $class->sound, "!\n";
  }
}
{ package Mouse;
  @ISA = qw(Animal);
  sub sound { 'squeak' }
  sub speak {
    my $class = shift;
    $class->Animal::speak(@_);  #矢印を使うことで、元のAnimalにMouse用の鳴き声がなくてもMouse自体の鳴き声を使うようになる
    print "[but you can barely hear it!]\n";
  }
}

Mouse->speak;
