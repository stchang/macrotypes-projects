#!/bin/bash

# run tests

RACO_FLAGS=( -j 4 )

case $NAME in
    "Turnstile+")
	raco test "${RACO_FLAGS[@]}" --package macrotypes-test
	raco test "${RACO_FLAGS[@]}" --package turnstile-test
	;;
    "Cur")
	# Cur tests cannot use multiple cores, for some reason
	raco test --package cur-test
	;;
    "SBPV Scheme")
	raco test "${RACO_FLAGS[@]}" --package sbpv
	raco test "${RACO_FLAGS[@]}" --timeout 200 modal-scheme/examples/
	;;
    "Typed Syndicate")
	raco test "${RACO_FLAGS[@]}" syndicate/racket/typed/
	;;
esac
