#!perl 

use 5.006;
use strict;
use warnings;
use Test::More tests => 6;

sub not_in_file_ok {
  my ($filename, %regex) = @_;  #ファイルの名前と%正規表現を引数として受け取る
  open( my $fh, '<', $filename )  #ファイルの中から正規表現部分にマッチする行をさがして
    or die "couldn't open $filename for reading: $!";

  my %violeted;

  while (my ($desc, $regex) = each %regex) {
    if ($line =~ $regex) {
      push @{@violeted{$desc}||=[]},$.; #配列violetedにpushする
    }
  }

  if (%violeted) {
    fail("$filename cantains boilerplate text");
    diag "$_ appears on lines @{$violetes{$_}}" for keys %violated;
  } else {
    pass ("$filename cantains no boilerplate text");
  }
}

sub module_boilerplate_ok {
  my ( $module ) = @_;
  not_in_file_ok($module =>
    'the great new $MODULENAME' => qr/ -The great new /,
    'boilerplate description' => qr/Quick summary of what the module/,
    'stub function' => qr/function[12]/,
  );
}

TODO: { #失敗しそうなものをTODOで覆っておく
  local $TODO = "Need to replace the boilerplate text";

  not_in_file_ok(README =>
    "The README is used..." => qr/The README is used/,
    "'version information here'" => qr/to provide version information/,
  )
  not_in_file_ok(Changes => "placeholder date/time" => qr(Date/time)
  );

  module_boilerplate_ok('lib/Animal.pm');
  module_boilerplate_ok('lib/Cow.pm');
  module_boilerplate_ok('lib/Horce.pm');
  module_boilerplate_ok('lib/Mouse.pm');
  module_boilerplate_ok('lib/Sheep.pm');
}
