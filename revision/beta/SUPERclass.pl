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
    $class->SUPER::speak(@_);`  #元のクラスを指定する名前をSUPERにすると@ISAに含まれているクラス全てから検索されるようになる
  }
}

Mouse->speak;
