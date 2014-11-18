use inc::Module::Install;

name 'Alt-Acme-Math-XS-ModuleInstall';
version '0.0.1';
perl_version '5.8.1';
all_from 'lib/Acme/Math/XS.pod';
inline module => 'Acme::Math::XS';
no_index directory => 'lib/Acme';

WriteAll;
