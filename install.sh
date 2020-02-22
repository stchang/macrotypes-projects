#!/bin/bash

# install langs

RACO_FLAGS=( --auto -j 2 )

case $NAME in
    "Turnstile+")
	# macrotypes (master) already cloned
	raco pkg install "${RACO_FLAGS[@]}" macrotypes/macrotypes-example/
	raco pkg install "${RACO_FLAGS[@]}" macrotypes/turnstile-example/
	raco pkg install "${RACO_FLAGS[@]}" macrotypes/macrotypes-test/
	raco pkg install "${RACO_FLAGS[@]}" macrotypes/turnstile-test/
	;;
    "MLish")
	git clone https://github.com/stchang/mlish.git
	raco pkg install "${RACO_FLAGS[@]}" mlish/mlish-lib/
	raco pkg install "${RACO_FLAGS[@]}" mlish/mlish-test/
	;;
    "Cur")
	git clone -b turnstile-core https://github.com/wilbowma/cur.git
	raco pkg install "${RACO_FLAGS[@]}" cur/cur-lib/
	raco pkg install "${RACO_FLAGS[@]}" cur/cur-test/
	;;
    "Cur2020")
	git clone -b popl2020-artifact https://github.com/stchang/cur.git
	raco pkg install "${RACO_FLAGS[@]}" cur/cur-lib/
	raco pkg install "${RACO_FLAGS[@]}" cur/cur-test/
	;;
    "SBPV Scheme")
	git clone https://github.com/maxsnew/modal-scheme.git
	raco pkg install "${RACO_FLAGS[@]}" modal-scheme/sbpv/
	;;
    "Typed Syndicate")
	git clone -b behav https://github.com/tonyg/syndicate.git
	raco pkg install "${RACO_FLAGS[@]}" -n syndicate syndicate/racket/
	;;
esac
