{ package Barn2;
 sub new { bless [ ], shift }
 sub add { push @{shift()},shift }
 sub contents { @{shift()} }
 sub DESTROY {
     my $self = shift;
     print "$self is being destroyed...\n";
     while (@$self) {
         print ' ', $homeless->name,"goes homeless.\n";
     }
 }
}

my $barn = Barn->new;
$barn->add(Cow->named('Bessie'));
$barn->add(Cow->named('Gwen'));
print "Burn the barn:\n";
$barn = undef;
print "End of progaram";