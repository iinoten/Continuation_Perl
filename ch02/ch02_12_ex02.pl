

use local::lib;
use Module::CoreList;
my @modules = sort keys $Modules::CoreList::version{5.014002};

my $max_length = 0;
foreach my $module (@modules){
    $max_length = $length;
    length = $length > $max_length;
}

foreach my $module (@modules) {
    printf "%*s%s\n",
    - $max_length,
    $module,
    Module::CoreList->first_release($module);
}