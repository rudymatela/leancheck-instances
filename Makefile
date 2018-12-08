# Makefile for leancheck-instances
#
# Copyright:   (c) 2015-2018 Rudy Matela
# License:     3-Clause BSD  (see the file LICENSE)
# Maintainer:  Rudy Matela <rudy@matela.com.br>
TESTS = test/main      \
        test/text
EGS = \
	eg/test-text
BENCHS = \
	bench/tiers
GHCIMPORTDIRS = src:test
# -dynamic is needed only for src/Test/LeanCheck/Derive.hs and test/derive.hs
GHCFLAGS = -O2 $(shell grep -q "Arch Linux" /etc/lsb-release && echo -dynamic)
HADDOCKFLAGS = --no-print-missing-docs \
  $(shell grep -q "Arch Linux" /etc/lsb-release && echo --optghc=-dynamic)

all: mk/toplibs

all-all: mk/All.o

test: $(patsubst %,%.run,$(TESTS)) diff-test test-sdist

diff-test: diff-test-tiers $(patsubst %,%.diff-test,$(EGS))

update-diff-test: update-diff-test-tiers $(patsubst %,%.update-diff-test,$(EGS))

%.run: %
	./$<

eg/%.diff-test: eg/%
	./$< | diff -rud test/diff/$<.out -

eg/%.update-diff-test: eg/%
	./$< >           test/diff/$<.out

clean: clean-hi-o clean-haddock
	rm -f $(TESTS) $(BENCHS) $(EGS) mk/toplibs

full-clean: clean
	rm -rf .stack-work
	rm -f tags TAGS

ghci: mk/All.ghci

install:
	@echo "use \`cabal install' instead"

test-sdist:
	./test/sdist

test-via-cabal:
	cabal test

test-via-stack:
	stack test

legacy-test: # needs ghc-8.2 .. ghc-7.8 installed as such
	make clean  &&  make test GHC=ghc-8.2  GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test GHC=ghc-8.0  GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test GHC=ghc-7.10 GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test GHC=ghc-7.8  GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test

legacy-test-via-cabal: # needs similarly named cabal wrappers
	cabal clean  &&  cabal-ghc-8.2  configure  &&  cabal-ghc-8.2  test
	cabal clean  &&  cabal-ghc-8.0  configure  &&  cabal-ghc-8.0  test
	cabal clean  &&  cabal-ghc-7.10 configure  &&  cabal-ghc-7.10 test
	cabal clean  &&  cabal-ghc-7.8  configure  &&  cabal-ghc-7.8  test
	cabal clean  &&  cabal test

hlint:
	hlint \
	  --ignore "Use import/export shortcut" \
	  --ignore "Redundant bracket" \
	  .

markdown:
	pandoc README.md -o README.html
	pandoc doc/tutorial.md -o doc/tutorial.html
	pandoc doc/data-invariant.md -o doc/data-invariant.html

# NOTE: (very hacky!) the following target allows parallel compilation (-jN) of
# eg and tests programs so long as they don't share dependencies _not_ stored
# in src/ and tests/.  Runnable binaries should depend on mk/toplibs instead of
# actual Haskell source files
mk/toplibs: mk/Toplibs.o
	touch mk/toplibs

include mk/haskell.mk

diff-test-tiers: bench/tiers
	./bench/tiers "Natural"          | diff -rud test/diff/tiers-Natural.out     -
	./bench/tiers "Text"             | diff -rud test/diff/tiers-Text.out        -
	./bench/tiers "ByteString" 6     | diff -rud test/diff/tiers-ByteString.out  -
	./bench/tiers "Set Int"          | diff -rud test/diff/tiers-SetInt.out      -
	./bench/tiers "Set Bool"         | diff -rud test/diff/tiers-SetBool.out     -

update-diff-test-tiers: bench/tiers
	./bench/tiers "Natural"          > test/diff/tiers-Natural.out
	./bench/tiers "Text"             > test/diff/tiers-Text.out
	./bench/tiers "ByteString" 6     > test/diff/tiers-ByteString.out
	./bench/tiers "Set Int"          > test/diff/tiers-SetInt.out
	./bench/tiers "Set Bool"         > test/diff/tiers-SetBool.out
