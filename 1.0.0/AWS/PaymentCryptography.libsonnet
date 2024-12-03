local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alias: {
    '#': d.pkg(
      name='Alias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PaymentCryptography.libsonnet',
      help='Definition of AWS::PaymentCryptography::Alias Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PaymentCryptography::Alias Resource
        * AliasName 
      |||,
      args=[
        d.arg('AliasName', 'd.T.string'),
      ]
    ),
    new(
      AliasName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AliasName) : 'AliasName must be a string',
        AliasName: AliasName,
      },
      DependsOn:: [],
      Type: 'AWS::PaymentCryptography::Alias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withKeyArn': d.fn('`withKeyArn` KeyArn ', [d.arg('KeyArn', d.T.string)]),
    withKeyArn(KeyArn): {
      assert std.isString(KeyArn) : 'KeyArn must be a string',
      Properties+::: { KeyArn: KeyArn },
    },
  },
  Key: {
    '#': d.pkg(
      name='Key',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PaymentCryptography.libsonnet',
      help='Definition of AWS::PaymentCryptography::Key Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PaymentCryptography::Key Resource
        * Exportable 
        * KeyAttributes 
      |||,
      args=[
        d.arg('Exportable', 'd.T.boolean'),
        d.arg('KeyAttributes', 'd.T.object'),
      ]
    ),
    new(
      Exportable,
      KeyAttributes,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(Exportable) : 'Exportable must be a boolean',
        Exportable: Exportable,
        assert std.isObject(KeyAttributes) : 'KeyAttributes must be a object',
        KeyAttributes: KeyAttributes,
      },
      DependsOn:: [],
      Type: 'AWS::PaymentCryptography::Key',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withKeyCheckValueAlgorithm': d.fn('`withKeyCheckValueAlgorithm` KeyCheckValueAlgorithm ', [d.arg('KeyCheckValueAlgorithm', d.T.string)]),
    withKeyCheckValueAlgorithm(KeyCheckValueAlgorithm): {
      assert std.isString(KeyCheckValueAlgorithm) : 'KeyCheckValueAlgorithm must be a string',
      Properties+::: { KeyCheckValueAlgorithm: KeyCheckValueAlgorithm },
    },
    '#withKeyIdentifier': d.fn('`withKeyIdentifier` KeyIdentifier ', [d.arg('KeyIdentifier', d.T.string)]),
    withKeyIdentifier(KeyIdentifier): {
      assert std.isString(KeyIdentifier) : 'KeyIdentifier must be a string',
      Properties+::: { KeyIdentifier: KeyIdentifier },
    },
    '#withKeyOrigin': d.fn('`withKeyOrigin` KeyOrigin ', [d.arg('KeyOrigin', d.T.string)]),
    withKeyOrigin(KeyOrigin): {
      assert std.isString(KeyOrigin) : 'KeyOrigin must be a string',
      Properties+::: { KeyOrigin: KeyOrigin },
    },
    '#withKeyState': d.fn('`withKeyState` KeyState ', [d.arg('KeyState', d.T.string)]),
    withKeyState(KeyState): {
      assert std.isString(KeyState) : 'KeyState must be a string',
      Properties+::: { KeyState: KeyState },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
