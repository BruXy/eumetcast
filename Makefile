DESTDIR=/usr/local/bin
PACKAGE=$(shell basename `ls -d ../eumetsat-*`)

.PHONY: reset package uninstall

reset: 
	cd usbreset && make

install: reset
	install eumetcast /etc/init.d/
	install eku_check $(DESTDIR) 
	chkconfig --add eumetcast
	cd usbreset && make install

uninstall: /etc/init.d/eumetcast $(DESTDIR)/eku_check
	cd usbreset && make uninstall
	rm -f $^	

package:
	cd .. && tar hczf $(PACKAGE).tar.gz eumetsat-*/*

