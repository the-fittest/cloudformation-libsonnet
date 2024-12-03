local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Hypervisor: {
    '#': d.pkg(
      name='Hypervisor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/BackupGateway.libsonnet',
      help='Definition of AWS::BackupGateway::Hypervisor Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::BackupGateway::Hypervisor Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::BackupGateway::Hypervisor',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHost': d.fn('`withHost` Host ', [d.arg('Host', d.T.string)]),
    withHost(Host): {
      assert std.isString(Host) : 'Host must be a string',
      Properties+::: { Host: Host },
    },
    '#withHypervisorArn': d.fn('`withHypervisorArn` HypervisorArn ', [d.arg('HypervisorArn', d.T.string)]),
    withHypervisorArn(HypervisorArn): {
      assert std.isString(HypervisorArn) : 'HypervisorArn must be a string',
      Properties+::: { HypervisorArn: HypervisorArn },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withLogGroupArn': d.fn('`withLogGroupArn` LogGroupArn ', [d.arg('LogGroupArn', d.T.string)]),
    withLogGroupArn(LogGroupArn): {
      assert std.isString(LogGroupArn) : 'LogGroupArn must be a string',
      Properties+::: { LogGroupArn: LogGroupArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withPassword': d.fn('`withPassword` Password ', [d.arg('Password', d.T.string)]),
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: { Password: Password },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUsername': d.fn('`withUsername` Username ', [d.arg('Username', d.T.string)]),
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: { Username: Username },
    },
  },
}
