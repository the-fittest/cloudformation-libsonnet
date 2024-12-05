local AWS = import '../1.0.0/AWS/main.libsonnet';
local test = import 'github.com/jsonnet-libs/testonnet/main.libsonnet';
local Parameter = AWS.SSM.Parameter;

test.new(std.thisFile)

+ test.case.new(
  name='Set int value',
  test=test.expect.eq(
    actual=Parameter.new(
             Value='12345',
             Type='String'
           )
           + Parameter.setName('/dev/nasd'),
    expected={ Properties: { Name: '/dev/nasd', Type: 'String', Value: '12345' }, Type: 'AWS::SSM::Parameter' }
    ,
  )
)

+ test.case.new(
  name='Set string value',
  test=test.expect.eq(
    actual=Parameter.new(
      Value='12345',
      Type='String'
    ),
    expected={ Properties: { Type: 'String', Value: '12345' }, Type: 'AWS::SSM::Parameter' }
    ,
  )
)
