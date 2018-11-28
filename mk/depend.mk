bench/tiers: \
  bench/tiers.hs \
  mk/toplibs
bench/tiers.o: \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  bench/tiers.hs
eg/test-text: \
  eg/test-text.hs \
  mk/toplibs
eg/test-text.o: \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  eg/test-text.hs
mk/All.o: \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  mk/All.hs
mk/Toplibs.o: \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  mk/Toplibs.hs
Setup.o: \
  Setup.hs
Setup: \
  Setup.hs \
  mk/toplibs
src/Test/LeanCheck/Instances.o: \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs
src/Test/LeanCheck/Instances/Text.o: \
  src/Test/LeanCheck/Instances/Text.hs
test/main.o: \
  test/main.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs
test/main: \
  test/main.hs \
  mk/toplibs
test/text.o: \
  test/text.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs
test/text: \
  test/text.hs \
  mk/toplibs
