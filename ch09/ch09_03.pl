use v5.10.1;

my @patterns =(
    qr/( ?:Willie )?Gilligan/,
    qr/Mary Ann/,
    qr/Ginger/,
    qr/(?:The )?Professor/,
    qr/Skipper/,
    qr/Mrs?.Howell/,
);
my $name = "Ginger";
say "Match!" if $name ~~ @patterns;     #"Match!"