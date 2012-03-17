# -------------------------------------------------------------------- #
# Makefile for building all packages in this project                   #
# Has machinery to build source packages and publish to my testing ppa #
# -------------------------------------------------------------------- #

changes=$(wildcard *.changes)
uploads=$(patsubst %.changes,%.ppa.upload,$(changes))

packages = $(wildcard pkg-scripts-*)
release = `lsb_release -cs`

all: $(packages)
	@set -e; for p in $(packages); do cd $$p ; debuild -S -sa ; cd - ; done 

publish: $(uploads)

%.ppa.upload: %.changes
	@dput ppa:pktoss/testing $<

clean:
	@rm -f *.build *.changes *.deb *.dsc *.gz *.upload

.PHONY: all clean publish
