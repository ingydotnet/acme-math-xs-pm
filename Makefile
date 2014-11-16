default:

doc: ReadMe.pod

ReadMe.pod: doc/Acme/Math/XS.swim
	swim --pod-cpan $< > $@
