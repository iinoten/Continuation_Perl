use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Oogaboogoo::Date',
    AUTHOR           => q{Iino2511 <ino@seesaa.co.jp>},
    VERSION_FROM     => 'lib/Oogaboogoo/Date.pm',
    ABSTRACT_FROM    => 'lib/Oogaboogoo/Date.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => '5.006',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '0',
    },
    BUILD_REQUIRES => {
        'Test::More' => '0',
    },
    PREREQ_PM => {
        #'ABC'              => '1.6',
        #'Foo::Bar::Module' => '5.0401',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Oogaboogoo-Date-*' },
);
