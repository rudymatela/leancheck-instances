bench/tiers: \
  bench/tiers.hs \
  mk/toplibs
bench/tiers.o: \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs \
  bench/tiers.hs
eg/test-text: \
  eg/test-text.hs \
  mk/toplibs
eg/test-text.o: \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs \
  eg/test-text.hs
mk/All.o: \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs \
  mk/All.hs
mk/Toplibs.o: \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs \
  mk/Toplibs.hs
Setup.o: \
  Setup.hs
Setup: \
  Setup.hs \
  mk/toplibs
src/Test/LeanCheck/Instances/ByteString.o: \
  src/Test/LeanCheck/Instances/ByteString.hs
src/Test/LeanCheck/Instances/Containers.o: \
  src/Test/LeanCheck/Instances/Containers.hs
src/Test/LeanCheck/Instances: \
  mk/toplibs
src/Test/LeanCheck/Instances/Natural.o: \
  src/Test/LeanCheck/Instances/Natural.hs
src/Test/LeanCheck/Instances.o: \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs
src/Test/LeanCheck/Instances/Text.o: \
  src/Test/LeanCheck/Instances/Text.hs
src/Test/LeanCheck/Instances/Time.o: \
  src/Test/LeanCheck/Instances/Time.hs
src/Test/LeanCheck/WithInstances.o: \
  src/Test/LeanCheck/WithInstances.hs \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs
test/main.o: \
  test/main.hs \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs
test/main: \
  test/main.hs \
  mk/toplibs
test/text.o: \
  test/text.hs \
  src/Test/LeanCheck/Instances/Time.hs \
  src/Test/LeanCheck/Instances/Text.hs \
  src/Test/LeanCheck/Instances.hs \
  src/Test/LeanCheck/Instances/Natural.hs \
  src/Test/LeanCheck/Instances/Containers.hs \
  src/Test/LeanCheck/Instances/ByteString.hs
test/text: \
  test/text.hs \
  mk/toplibs
