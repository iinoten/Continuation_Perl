{ package Animal;
  sub speak {
    my $class = shift;
    print "a $class goes ", $class->sound, "!\n"
  }
}

{ package Mouse;
  @ISA = qw(Animal);  #Mouseパッケージが属するクラス(今回はAnimal)を指定する
  sub sound { 'squeak' }
  sub speak {
    my $class = shift;
    Animal::speak($class);  #クラス名を引数として渡す？
    print "[but you can barely hear it!]\n";
  }
}

