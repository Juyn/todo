PREFIX ?= ~/.local/bin

install:
	cp todo $(PREFIX)/todo
	chmod +x $(PREFIX)/todo

uninstall:
	rm -f $(PREFIX)/todo
