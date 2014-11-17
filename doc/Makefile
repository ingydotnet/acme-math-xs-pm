doc: README

README: /tmp/AcmeMathXS.pod
	pod2text $< > $@

/tmp/AcmeMathXS.pod: doc/Acme/Math/XS.swim
	swim --pod-cpan $< > $@
