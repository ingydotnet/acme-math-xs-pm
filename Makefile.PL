use inc::Module::Install;

name 'Alt-Acme-Math-XS-ModuleInstall';
all_from 'lib/Acme/Math/XS.pod';
version '0.0.1';
inline module => 'Acme::Math::XS';
no_index directory => 'lib/Acme';

WriteAll;
