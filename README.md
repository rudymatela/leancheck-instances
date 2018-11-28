LeanCheck
=========

[![leancheck-instances's Build Status][build-status]][build-log]
[![leancheck-instances on Hackage][hackage-version]][leancheck-instances-on-hackage]
[![leancheck-instances on Stackage LTS][stackage-lts-badge]][leancheck-instances-on-stackage-lts]
[![leancheck-instances on Stackage Nightly][stackage-nightly-badge]][leancheck-instances-on-stackage-nightly]

__WORK IN PROGRESS -- MOST OF THE LINKS OR INSTRUCTIONS HERE DO NOT WORK__

This package extends [LeanCheck] by providing [`Listable`] instances for common types provided by the
Haskell Platform.

This package is to [LeanCheck] what [quickcheck-instances] is to [QuickCheck].
The current objective is to include all types supported by [quickcheck-instances].


Installing
----------

To install the latest leancheck-instances version from Hackage, just run:

	$ cabal update
	$ cabal install leancheck-instances


Examples
--------

TBA


Further reading / see also
--------------------------

* [leancheck-instances' Haddock Documentation];
* [LeanCheck];
* [LeanCheck provider for Tasty]
  -- `$ cabal install tasty-leancheck` ;
* [LeanCheck provider for test-framework]
  -- `$ cabal install test-framework-leancheck` ;
* [LeanCheck provider for Hspec]
  -- `$ cabal install hspec-leancheck` .


[leancheck-instances' Haddock documentation]: https://hackage.haskell.org/package/leancheck-instances/docs/Test-LeanCheck-Instances.html
[LeanCheck's Haddock documentation]: https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html

[`Listable`]:       https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html#t:Listable
[`holds`]:          https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html#v:holds
[`counterExample`]: https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html#v:counterExample
[`check`]:          https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html#v:check
[`tiers`]:          https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html#v:tiers
[`list`]:           https://hackage.haskell.org/package/leancheck/docs/Test-LeanCheck.html#v:list

[LeanCheck provider for Tasty]:          https://hackage.haskell.org/package/tasty-leancheck
[LeanCheck provider for test-framework]: https://hackage.haskell.org/package/test-framework-leancheck
[LeanCheck provider for Hspec]:          https://hackage.haskell.org/package/hspec-leancheck
[LeanCheck]:                             https://github.com/rudymatela/leancheck
[QuickCheck]:                            https://hackage.haskell.org/package/QuickCheck
[quickcheck-instances]:                  https://hackage.haskell.org/package/quickcheck-instances

[build-status]: https://travis-ci.org/rudymatela/leancheck-instances.svg?branch=master
[build-log]:    https://travis-ci.org/rudymatela/leancheck-instances
[leancheck-on-hackage]: https://hackage.haskell.org/package/leancheck-instances
[stackage-lts-badge]:            http://stackage.org/package/leancheck-instances/badge/lts
[stackage-nightly-badge]:        http://stackage.org/package/leancheck-instances/badge/nightly
[leancheck-instances-on-stackage]:         http://stackage.org/package/leancheck-instances
[leancheck-instances-on-stackage-lts]:     http://stackage.org/lts/package/leancheck-instances
[leancheck-instances-on-stackage-nightly]: http://stackage.org/nightly/package/leancheck-instances
