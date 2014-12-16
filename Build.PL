use strict;
use warnings;

use Module::Build 0.28;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.28"
  },
  "configure_requires" => {
    "Module::Build" => "0.28",
    "perl" => "5.008"
  },
  "dist_abstract" => "Math is HARD (faster)",
  "dist_author" => [
    "Ingy döt Net <ingy\@cpan.org>",
    "David Oswald <davido\@cpan.org>",
  ],
  "dist_name" => "Alt-Acme-Math-XS-ModuleBuild",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "Alt::Acme::Math::XS::ModuleBuild",
  "recommends" => {
    "perl" => "5.008008"
  },
  "recursive_test_files" => 1,
  "requires" => {
    "perl" => "5.008",
  },
  "script_files" => [],
  "test_requires" => {
    "Test::More" => 0,
    "perl" => "5.008",
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IO::Socket::INET" => 0,
  "IPC::Open3" => 0,
  "Module::Build" => "0.28",
  "POSIX" => 0,
  "Scalar::Util" => 0,
  "Test::Fatal" => 0,
  "Test::More" => 0,
  "Test::Warnings" => "0.005",
  "Time::HiRes" => 0,
  "open" => 0,
  "perl" => "5.008",
  "utf8" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
