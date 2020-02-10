#!/bin/bash

# run tests

case $NAME in
    "Turnstile+")
	raco test -j 2 --package macrotypes-test
	raco test -j 2 --package turnstile-test
	;;
    "Cur")
	# Cur tests cannot use multiple cores
	raco test --package cur-test
	;;
    "SBPV Scheme")
	raco test -j 2 --package sbpv
	raco test -j 2 --timeout 200 modal-scheme/examples/
	;;
    "Typed Syndicate")
	raco test -j 2 syndicate/racket/typed/
	;;
esac
