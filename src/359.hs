-- disctance from 1 is additive
sequenceIt x = x - 1 + x

runSequences n =
  sequenceIt x
