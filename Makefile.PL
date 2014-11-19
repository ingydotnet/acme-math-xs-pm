use strict;
use warnings;

use 5.008001;

use ExtUtils::MakeMaker;
WriteMakefile(
  NAME => 'Acme::Math::XS',
  VERSION => '0.0.6',
  ABSTRACT => 'Math is HARD (faster)',
  AUTHOR => 'Ingy döt Net <ingy@cpan.org>',
  LICENSE => 'perl',
  MIN_PERL_VERSION => '5.008001',
  test => { TESTS => 't/*.t' },
);

use lib 'inc';
use Inline::Module::MakeMaker;
FixMakefile(
  module => 'Acme::Math::XS',
);
