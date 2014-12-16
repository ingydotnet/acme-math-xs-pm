use strict; use warnings;
use Module::Build::InlineModule;

Module::Build::InlineModule->new(
    dist_name           => 'Alt-Acme-Math-XS-ModuleBuild',
    dist_abstract       => 'Math is HARD (faster)',
    license             => 'perl',
    dist_author         => 'Ingy döt Net <ingy@cpan.org>',
    dist_version        => '0.01',
    requires => {
        'Test::More' => 0,
    },
    inline => {
        module => 'Acme::Math::XS',
    },
)->create_build_script();
