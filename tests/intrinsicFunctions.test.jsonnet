local test = import 'github.com/jsonnet-libs/testonnet/main.libsonnet';
local AWS = import '../1.0.0/main.libsonnet';

test.new(std.thisFile)

+ test.case.new(
  name='Set int value',
  test=test.expect.eq(
    actual=AWS.fn.base64('asd'),
    expected={"Fn::Base64": "asd"},
  )
)

