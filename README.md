pkt-script-packages -- Simple debian packages that install scripts.
===================================================================

These debian packages are just collections of scripts I find useful
in certain occasions.

The scripts are installed under /usr/bin and every one of them has
a corresponding section 1 man page as required by debian policy.

This infrastructure for building such "script packages" encourages
the scripts to be put under src/ and the man pages under doc/.

The man pages are supposed to be written in *perlpod* format and
then the Makefile will do the conversion to man automatically using
pod2man.

You can find these script packages in my ppas (e.g., pktoss/testing).

If you want to reuse the infrastructure it is best to just fork
and adapt to your needs.

This work is distributed under BSD license.
