use strict; use warnings;

package Acme::Math::XS;
our $VERSION = '0.0.8';

use Exporter 'import';
our @EXPORT = qw(add subtract);

use XSLoader();
XSLoader::load 'Acme::Math::XS', $VERSION;

1;
