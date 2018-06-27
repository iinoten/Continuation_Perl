use Cwd;
use File::Spec;

my $cmd = getcwd;

foreach my $file (glob( ".**")){
    print " ",File::Spec->catfile($cmd file),"\n";
}