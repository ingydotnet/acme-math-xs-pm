use strict; use warnings;
package Acme::Math::XS;
# our $VERSION = 'x.x.x';

use Exporter 'import';
our @EXPORT = qw(
    add
    subtract
);

use Acme::Math::XS::Inline C => 'lib/Acme/Math/XS.c';

1;
