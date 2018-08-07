package Animal;

sub speak {
    my $class = shift;
    print "a $class goes",$class->sound,"!\n" 
}

sub sound {
    die  'you have to difine sound() in a subslee'
}

sub named {
    my $eighter = shift;
    ref $eighter    #$eighterの中身がリファレンスかどうかを見る
    ? $$eighter     #デリファレンスするか文字列を返すか
    :"an unnamed $eighter";
}

sub default_color {"brown"} 
sub sound { croak "subclass must define a sound" }#warnみたいな感じ？
#のちに子メソッドによって書きかえられる

sub eat {
    my $eighter = shift;
    my $food = shift;
    print $eighter->name, "eats $food.\n";
}

sub set_color {
    my $self = shift;
    $self->{Color};
}
sub set_color{
    my $self = shift;
    $self->{Color} = shift;
}

sub set_name {
    ref(my $self = shift) or croak "instance variable needed";
    $self -> {Color} = shift;
}

sub AUTOLOAD {
    our $AUTOLOAD;
    (my $method = $AUTOLOAD) =~ s/.*:://s #パッケージっぽいところを消す
    if ($method = "eat") {
        eval q{
            sub eat{
                long
                definition
                goes
                here
            }
        };
        die $@ if $@;
        goto &eat;
        } else {
            croak "$_[0] does not know how to $method";
        }
    }
}
1;