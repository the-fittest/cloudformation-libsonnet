local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  EnvironmentAccountConnection: {
    '#': d.pkg(
      name='EnvironmentAccountConnection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Proton.libsonnet',
      help='Resource Schema describing various properties for AWS Proton Environment Account Connections resources.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Proton::EnvironmentAccountConnection Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Proton::EnvironmentAccountConnection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCodebuildRoleArn': d.fn('`withCodebuildRoleArn` CodebuildRoleArn ', [d.arg('CodebuildRoleArn', d.T.string)]),
    withCodebuildRoleArn(CodebuildRoleArn): {
      assert std.isString(CodebuildRoleArn) : 'CodebuildRoleArn must be a string',
      Properties+::: { CodebuildRoleArn: CodebuildRoleArn },
    },
    '#withComponentRoleArn': d.fn('`withComponentRoleArn` ComponentRoleArn ', [d.arg('ComponentRoleArn', d.T.string)]),
    withComponentRoleArn(ComponentRoleArn): {
      assert std.isString(ComponentRoleArn) : 'ComponentRoleArn must be a string',
      Properties+::: { ComponentRoleArn: ComponentRoleArn },
    },
    '#withEnvironmentAccountId': d.fn('`withEnvironmentAccountId` EnvironmentAccountId ', [d.arg('EnvironmentAccountId', d.T.string)]),
    withEnvironmentAccountId(EnvironmentAccountId): {
      assert std.isString(EnvironmentAccountId) : 'EnvironmentAccountId must be a string',
      Properties+::: { EnvironmentAccountId: EnvironmentAccountId },
    },
    '#withEnvironmentName': d.fn('`withEnvironmentName` EnvironmentName ', [d.arg('EnvironmentName', d.T.string)]),
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: { EnvironmentName: EnvironmentName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withManagementAccountId': d.fn('`withManagementAccountId` ManagementAccountId ', [d.arg('ManagementAccountId', d.T.string)]),
    withManagementAccountId(ManagementAccountId): {
      assert std.isString(ManagementAccountId) : 'ManagementAccountId must be a string',
      Properties+::: { ManagementAccountId: ManagementAccountId },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EnvironmentTemplate: {
    '#': d.pkg(
      name='EnvironmentTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Proton.libsonnet',
      help='Definition of AWS::Proton::EnvironmentTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Proton::EnvironmentTemplate Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Proton::EnvironmentTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withEncryptionKey': d.fn('`withEncryptionKey` EncryptionKey ', [d.arg('EncryptionKey', d.T.string)]),
    withEncryptionKey(EncryptionKey): {
      assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
      Properties+::: { EncryptionKey: EncryptionKey },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withProvisioning': d.fn('`withProvisioning` Provisioning ', [d.arg('Provisioning', d.T.string)]),
    withProvisioning(Provisioning): {
      assert std.isString(Provisioning) : 'Provisioning must be a string',
      Properties+::: { Provisioning: Provisioning },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServiceTemplate: {
    '#': d.pkg(
      name='ServiceTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Proton.libsonnet',
      help='Definition of AWS::Proton::ServiceTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Proton::ServiceTemplate Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Proton::ServiceTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withEncryptionKey': d.fn('`withEncryptionKey` EncryptionKey ', [d.arg('EncryptionKey', d.T.string)]),
    withEncryptionKey(EncryptionKey): {
      assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
      Properties+::: { EncryptionKey: EncryptionKey },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withPipelineProvisioning': d.fn('`withPipelineProvisioning` PipelineProvisioning ', [d.arg('PipelineProvisioning', d.T.string)]),
    withPipelineProvisioning(PipelineProvisioning): {
      assert std.isString(PipelineProvisioning) : 'PipelineProvisioning must be a string',
      Properties+::: { PipelineProvisioning: PipelineProvisioning },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
