# Instructions
#
#   git clone git@github.com:ingydotnet/acme-math-xs-pm master
#   make -f master/doc/Makefile
#

doc: README

README: /tmp/AcmeMathXS.pod
	pod2text $< > $@

/tmp/AcmeMathXS.pod: master/doc/Acme/Math/XS.swim
	swim --pod-cpan $< > $@
