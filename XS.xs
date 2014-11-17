#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

long add(long a, long b) {
    return a + b;
}

long subtract(long a, long b) {
    return a - b;
}

MODULE = Acme::Math::XS  PACKAGE = Acme::Math::XS
PROTOTYPES: DISABLE

long
add (a, b)
	long	a
	long	b

long
subtract (a, b)
	long	a
	long	b
