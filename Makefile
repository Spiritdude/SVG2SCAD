VERSION=0.005

dist::
	cd ..; tar cfz svg2scad-${VERSION}.tar.gz SVG2SCAD/{README,Makefile,svg2scad}

backup::
	cd ..; cp svg2scad-${VERSION}.tar.gz ~/Backup/; cp svg2scad-${VERSION}.tar.gz ~/Dropbox/; scp svg2scad-${VERSION}.tar.gz the-labs.com:Backup/

install::
	cp svg2scad /usr/bin/

deinstall::
	rm -f /usr/bin/svg2scad

# -- https://github.com/Spiritdude/SVG2SCAD
#git-origin::
#	git push -u origin master

