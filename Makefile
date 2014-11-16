default:

doc: About.pod ReadMe.pod

About.pod: doc/About.swim
	swim --pod-cpan $< > $@

ReadMe.pod: doc/Acme/Math/XS.swim
	swim --pod-cpan $< > $@
