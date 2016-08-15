DESTDIR=/usr/local/bin
CC=gcc
#CFLAGS=-ggdb3

usbreset:

install: usbreset eku_reset
	install usbreset $(DESTDIR)
	install eku_reset $(DESTDIR)

uninstall: $(DESTDIR)/usbreset $(DESTDIR)/eku_reset
	rm -f $^
	
.PHONY: clean

clean:
	rm -f ./usbreset
	
