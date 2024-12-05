local AWS = import '../1.0.0/AWS/main.libsonnet';
local test = import 'github.com/jsonnet-libs/testonnet/main.libsonnet';
local LogGroup = AWS.Logs.LogGroup;

test.new(std.thisFile)

+ test.case.new(
  name='Set int value',
  test=test.expect.eq(
    actual=LogGroup.new() + LogGroup.setRetentionInDays(1),
    expected={ Properties: { RetentionInDays: 1 }, Type: 'AWS::Logs::LogGroup' },
  )
)

+ test.case.new(
  name='No parameter',
  test=test.expect.eq(
    actual=LogGroup.new(),
    expected={ Type: 'AWS::Logs::LogGroup' },
  )
)
