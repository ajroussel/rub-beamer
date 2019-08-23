
PACKAGE_SRC = $(wildcard *.sty)

DESTDIR     = $(shell kpsewhich -var-value=TEXMFHOME)
INSTALL_DIR = $(DESTDIR)/tex/latex/rub-beamer

install: $(PACKAGE_SRC)
	mkdir -p $(INSTALL_DIR)
	cp $(PACKAGE_SRC) $(INSTALL_DIR)
	sudo texhash

uninstall:
	rm -f "$(addprefix $(INSTALL_DIR)/, $(PACKAGE_SRC))"
	rmdir "$(INSTALL_DIR)"
