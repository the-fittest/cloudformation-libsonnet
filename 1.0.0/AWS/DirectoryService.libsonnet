local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  MicrosoftAD: {
    '#': d.pkg(
      name='MicrosoftAD',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DirectoryService.libsonnet',
      help='Resource Type definition for AWS::DirectoryService::MicrosoftAD',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DirectoryService::MicrosoftAD Resource
        * VpcSettings 
        * Name 
        * Password 
      |||,
      args=[
        d.arg('VpcSettings', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
        d.arg('Password', 'd.T.string'),
      ]
    ),
    new(
      VpcSettings,
      Name,
      Password,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(VpcSettings) : 'VpcSettings must be a object',
        VpcSettings: VpcSettings,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Password) : 'Password must be a string',
        Password: Password,
      },
      DependsOn:: [],
      Type: 'AWS::DirectoryService::MicrosoftAD',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withDnsIpAddresses': d.fn('`withDnsIpAddresses` DnsIpAddresses ', [d.arg('DnsIpAddresses', d.T.array)]),
    withDnsIpAddresses(DnsIpAddresses): {
      assert std.isArray(DnsIpAddresses) : 'DnsIpAddresses must be a array',
      Properties+::: { DnsIpAddresses: DnsIpAddresses },
    },
    '#withCreateAlias': d.fn('`withCreateAlias` CreateAlias ', [d.arg('CreateAlias', d.T.boolean)]),
    withCreateAlias(CreateAlias): {
      assert std.isBoolean(CreateAlias) : 'CreateAlias must be a boolean',
      Properties+::: { CreateAlias: CreateAlias },
    },
    '#withEdition': d.fn('`withEdition` Edition ', [d.arg('Edition', d.T.string)]),
    withEdition(Edition): {
      assert std.isString(Edition) : 'Edition must be a string',
      Properties+::: { Edition: Edition },
    },
    '#withEnableSso': d.fn('`withEnableSso` EnableSso ', [d.arg('EnableSso', d.T.boolean)]),
    withEnableSso(EnableSso): {
      assert std.isBoolean(EnableSso) : 'EnableSso must be a boolean',
      Properties+::: { EnableSso: EnableSso },
    },
    '#withShortName': d.fn('`withShortName` ShortName ', [d.arg('ShortName', d.T.string)]),
    withShortName(ShortName): {
      assert std.isString(ShortName) : 'ShortName must be a string',
      Properties+::: { ShortName: ShortName },
    },
  },
  SimpleAD: {
    '#': d.pkg(
      name='SimpleAD',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DirectoryService.libsonnet',
      help='Resource Type definition for AWS::DirectoryService::SimpleAD',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DirectoryService::SimpleAD Resource
        * VpcSettings 
        * Size 
        * Name 
        * Password 
      |||,
      args=[
        d.arg('VpcSettings', 'd.T.object'),
        d.arg('Size', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Password', 'd.T.string'),
      ]
    ),
    new(
      VpcSettings,
      Size,
      Name,
      Password,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(VpcSettings) : 'VpcSettings must be a object',
        VpcSettings: VpcSettings,
        assert std.isString(Size) : 'Size must be a string',
        Size: Size,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Password) : 'Password must be a string',
        Password: Password,
      },
      DependsOn:: [],
      Type: 'AWS::DirectoryService::SimpleAD',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withDnsIpAddresses': d.fn('`withDnsIpAddresses` DnsIpAddresses ', [d.arg('DnsIpAddresses', d.T.array)]),
    withDnsIpAddresses(DnsIpAddresses): {
      assert std.isArray(DnsIpAddresses) : 'DnsIpAddresses must be a array',
      Properties+::: { DnsIpAddresses: DnsIpAddresses },
    },
    '#withCreateAlias': d.fn('`withCreateAlias` CreateAlias ', [d.arg('CreateAlias', d.T.boolean)]),
    withCreateAlias(CreateAlias): {
      assert std.isBoolean(CreateAlias) : 'CreateAlias must be a boolean',
      Properties+::: { CreateAlias: CreateAlias },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnableSso': d.fn('`withEnableSso` EnableSso ', [d.arg('EnableSso', d.T.boolean)]),
    withEnableSso(EnableSso): {
      assert std.isBoolean(EnableSso) : 'EnableSso must be a boolean',
      Properties+::: { EnableSso: EnableSso },
    },
    '#withShortName': d.fn('`withShortName` ShortName ', [d.arg('ShortName', d.T.string)]),
    withShortName(ShortName): {
      assert std.isString(ShortName) : 'ShortName must be a string',
      Properties+::: { ShortName: ShortName },
    },
  },
}
