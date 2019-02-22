VERSION=0.006

dist::
	cd ..; tar cfz svg2scad-${VERSION}.tar.gz SVG2SCAD/{README,Makefile,svg2scad}

backup::
	cd ..; cp svg2scad-${VERSION}.tar.gz ~/Backup/; cp svg2scad-${VERSION}.tar.gz ~/Dropbox/; scp svg2scad-${VERSION}.tar.gz the-labs.com:Backup/

requirements::
	sudo cpan XML::Simple Math::Bezier Data::Dumper

install::
	cp svg2scad /usr/bin/

deinstall::
	rm -f /usr/bin/svg2scad

