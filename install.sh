#!/bin/bash

# install langs

case $NAME in
    "Turnstile+")
	raco pkg install --auto -j 2 macrotypes/macrotypes-example/
	raco pkg install --auto -j 2 macrotypes/turnstile-example/
	raco pkg install --auto -j 2 macrotypes/macrotypes-test/
	raco pkg install --auto -j 2 macrotypes/turnstile-test/
	;;
    "Cur")
	git clone -b popl2020-artifact https://github.com/stchang/cur.git
	raco pkg install --auto -j 2 cur/cur-lib/
	raco pkg install --auto -j 2 cur/cur-test/
	;;
    "SBPV Scheme")
	git clone https://github.com/maxsnew/modal-scheme.git
	raco pkg install --auto -j 2 modal-scheme/sbpv/
	;;
    "Typed Syndicate")
	git clone -b behav https://github.com/tonyg/syndicate.git
	raco pkg install --auto -j 2 -n syndicate syndicate/racket/
	;;
esac
