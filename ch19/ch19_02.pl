package Racer;
use Moose::Role;
use namespace::autoclean;

has $_ => (is => 'rw' , default => 0)
  foreach qw(wins places shows losses);

  1;
