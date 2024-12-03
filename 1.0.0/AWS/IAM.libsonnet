local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessKey: {
    '#': d.pkg(
      name='AccessKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::AccessKey',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::AccessKey Resource
        * UserName 
      |||,
      args=[
        d.arg('UserName', 'd.T.string'),
      ]
    ),
    new(
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::AccessKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSecretAccessKey': d.fn('`withSecretAccessKey` SecretAccessKey ', [d.arg('SecretAccessKey', d.T.string)]),
    withSecretAccessKey(SecretAccessKey): {
      assert std.isString(SecretAccessKey) : 'SecretAccessKey must be a string',
      Properties+::: { SecretAccessKey: SecretAccessKey },
    },
    '#withSerial': d.fn('`withSerial` Serial ', [d.arg('Serial', d.T.integer)]),
    withSerial(Serial): {
      assert std.isNumber(Serial) : 'Serial must be a integer',
      Properties+::: { Serial: Serial },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
  },
  Group: {
    '#': d.pkg(
      name='Group',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Creates a new group.For information about the number of groups you can create, see [Limitations on Entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::Group Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IAM::Group',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withManagedPolicyArns': d.fn('`withManagedPolicyArns` ManagedPolicyArns ', [d.arg('ManagedPolicyArns', d.T.array)]),
    withManagedPolicyArns(ManagedPolicyArns): {
      assert std.isArray(ManagedPolicyArns) : 'ManagedPolicyArns must be a array',
      Properties+::: { ManagedPolicyArns: ManagedPolicyArns },
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withPolicies': d.fn('`withPolicies` Policies ', [d.arg('Policies', d.T.array)]),
    withPolicies(Policies): {
      assert std.isArray(Policies) : 'Policies must be a array',
      Properties+::: { Policies: Policies },
    },
  },
  GroupPolicy: {
    '#': d.pkg(
      name='GroupPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Adds or updates an inline policy document that is embedded in the specified IAM group. A group can also have managed policies attached to it. To attach a managed policy to a group, use [AWS::IAM::Group](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html). To create a new managed policy, use [AWS::IAM::ManagedPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html). For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*. For information about the maximum number of inline policies that you can embed in a group, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::GroupPolicy Resource
        * PolicyName The name of the policy document. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
        * GroupName The name of the group to associate the policy with. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-.
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('GroupName', 'd.T.string'),
      ]
    ),
    new(
      PolicyName,
      GroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(GroupName) : 'GroupName must be a string',
        GroupName: GroupName,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::GroupPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument', d.T.object)]),
    withPolicyDocument(PolicyDocument): {
      assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
      Properties+::: { PolicyDocument: PolicyDocument },
    },
  },
  InstanceProfile: {
    '#': d.pkg(
      name='InstanceProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Creates a new instance profile. For information about instance profiles, see [Using instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html).For information about the number of instance profiles you can create, see [object quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::InstanceProfile Resource
        * Roles The name of the role to associate with the instance profile. Only one role can be assigned to an EC2 instance at a time, and all applications on the instance share the same role and permissions.
      |||,
      args=[
        d.arg('Roles', 'd.T.array'),
      ]
    ),
    new(
      Roles,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Roles) : 'Roles must be a array',
        Roles: Roles,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::InstanceProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withInstanceProfileName': d.fn('`withInstanceProfileName` InstanceProfileName ', [d.arg('InstanceProfileName', d.T.string)]),
    withInstanceProfileName(InstanceProfileName): {
      assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
      Properties+::: { InstanceProfileName: InstanceProfileName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  ManagedPolicy: {
    '#': d.pkg(
      name='ManagedPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Creates a new managed policy for your AWS-account. This operation creates a policy version with a version identifier of v1 and sets v1 as the policys default version. For more information about policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*. As a best practice, you can validate your IAM policies. To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html) in the *IAM User Guide*. For more information about managed policies in general, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::ManagedPolicy Resource
        * PolicyDocument The JSON policy document that you want to use as the content for the new policy. You must provide policies in JSON format in IAM. However, for CFN templates formatted in YAML, you can provide the policy in JSON or YAML format. CFN always converts a YAML policy to JSON format before submitting it to IAM. The maximum length of the policy document that you can pass in this operation, including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see [IAM and character quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length). To learn more about JSON policy grammar, see [Grammar of the IAM JSON policy language](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html) in the *IAM User Guide*.  The [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:+Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range+The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)+The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)
      |||,
      args=[
        d.arg('PolicyDocument', ''),
      ]
    ),
    new(
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::ManagedPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withGroups': d.fn('`withGroups` Groups ', [d.arg('Groups', d.T.array)]),
    withGroups(Groups): {
      assert std.isArray(Groups) : 'Groups must be a array',
      Properties+::: { Groups: Groups },
    },
    '#withManagedPolicyName': d.fn('`withManagedPolicyName` ManagedPolicyName ', [d.arg('ManagedPolicyName', d.T.string)]),
    withManagedPolicyName(ManagedPolicyName): {
      assert std.isString(ManagedPolicyName) : 'ManagedPolicyName must be a string',
      Properties+::: { ManagedPolicyName: ManagedPolicyName },
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withRoles': d.fn('`withRoles` Roles ', [d.arg('Roles', d.T.array)]),
    withRoles(Roles): {
      assert std.isArray(Roles) : 'Roles must be a array',
      Properties+::: { Roles: Roles },
    },
    '#withUsers': d.fn('`withUsers` Users ', [d.arg('Users', d.T.array)]),
    withUsers(Users): {
      assert std.isArray(Users) : 'Users must be a array',
      Properties+::: { Users: Users },
    },
    '#withPolicyArn': d.fn('`withPolicyArn` PolicyArn ', [d.arg('PolicyArn', d.T.string)]),
    withPolicyArn(PolicyArn): {
      assert std.isString(PolicyArn) : 'PolicyArn must be a string',
      Properties+::: { PolicyArn: PolicyArn },
    },
    '#withAttachmentCount': d.fn('`withAttachmentCount` AttachmentCount ', [d.arg('AttachmentCount', d.T.integer)]),
    withAttachmentCount(AttachmentCount): {
      assert std.isNumber(AttachmentCount) : 'AttachmentCount must be a integer',
      Properties+::: { AttachmentCount: AttachmentCount },
    },
    '#withCreateDate': d.fn('`withCreateDate` CreateDate ', [d.arg('CreateDate', d.T.string)]),
    withCreateDate(CreateDate): {
      assert std.isString(CreateDate) : 'CreateDate must be a string',
      Properties+::: { CreateDate: CreateDate },
    },
    '#withUpdateDate': d.fn('`withUpdateDate` UpdateDate ', [d.arg('UpdateDate', d.T.string)]),
    withUpdateDate(UpdateDate): {
      assert std.isString(UpdateDate) : 'UpdateDate must be a string',
      Properties+::: { UpdateDate: UpdateDate },
    },
    '#withDefaultVersionId': d.fn('`withDefaultVersionId` DefaultVersionId ', [d.arg('DefaultVersionId', d.T.string)]),
    withDefaultVersionId(DefaultVersionId): {
      assert std.isString(DefaultVersionId) : 'DefaultVersionId must be a string',
      Properties+::: { DefaultVersionId: DefaultVersionId },
    },
    '#withIsAttachable': d.fn('`withIsAttachable` IsAttachable ', [d.arg('IsAttachable', d.T.boolean)]),
    withIsAttachable(IsAttachable): {
      assert std.isBoolean(IsAttachable) : 'IsAttachable must be a boolean',
      Properties+::: { IsAttachable: IsAttachable },
    },
    '#withPermissionsBoundaryUsageCount': d.fn('`withPermissionsBoundaryUsageCount` PermissionsBoundaryUsageCount ', [d.arg('PermissionsBoundaryUsageCount', d.T.integer)]),
    withPermissionsBoundaryUsageCount(PermissionsBoundaryUsageCount): {
      assert std.isNumber(PermissionsBoundaryUsageCount) : 'PermissionsBoundaryUsageCount must be a integer',
      Properties+::: { PermissionsBoundaryUsageCount: PermissionsBoundaryUsageCount },
    },
    '#withPolicyId': d.fn('`withPolicyId` PolicyId ', [d.arg('PolicyId', d.T.string)]),
    withPolicyId(PolicyId): {
      assert std.isString(PolicyId) : 'PolicyId must be a string',
      Properties+::: { PolicyId: PolicyId },
    },
  },
  OIDCProvider: {
    '#': d.pkg(
      name='OIDCProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::OIDCProvider',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::OIDCProvider Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IAM::OIDCProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClientIdList': d.fn('`withClientIdList` ClientIdList ', [d.arg('ClientIdList', d.T.array)]),
    withClientIdList(ClientIdList): {
      assert std.isArray(ClientIdList) : 'ClientIdList must be a array',
      Properties+::: { ClientIdList: ClientIdList },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withThumbprintList': d.fn('`withThumbprintList` ThumbprintList ', [d.arg('ThumbprintList', d.T.array)]),
    withThumbprintList(ThumbprintList): {
      assert std.isArray(ThumbprintList) : 'ThumbprintList must be a array',
      Properties+::: { ThumbprintList: ThumbprintList },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Policy: {
    '#': d.pkg(
      name='Policy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Adds or updates an inline policy document that is embedded in the specified IAM group, user or role. An IAM user can also have a managed policy attached to it. For information about policies, see [Managed Policies and Inline Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *User Guide*. The Groups, Roles, and Users properties are optional. However, you must specify at least one of these properties. For information about policy documents see [Creating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_create.html) in the *User Guide*. For information about limits on the number of inline policies that you can embed in an identity, see [Limitations on Entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *User Guide*.This resource does not support [drift detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html). The following inline policy resource types support drift detection:+[AWS::IAM::GroupPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-grouppolicy.html) +[AWS::IAM::RolePolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-rolepolicy.html) +[AWS::IAM::UserPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-userpolicy.html)',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::Policy Resource
        * PolicyDocument The policy document. You must provide policies in JSON format in IAM. However, for CFN templates formatted in YAML, you can provide the policy in JSON or YAML format. CFN always converts a YAML policy to JSON format before submitting it to IAM. The [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:+Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range+The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)+The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)
        * PolicyName The name of the policy document. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
      |||,
      args=[
        d.arg('PolicyDocument', ''),
        d.arg('PolicyName', 'd.T.string'),
      ]
    ),
    new(
      PolicyDocument,
      PolicyName,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        PolicyDocument: PolicyDocument,
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::Policy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withGroups': d.fn('`withGroups` Groups ', [d.arg('Groups', d.T.array)]),
    withGroups(Groups): {
      assert std.isArray(Groups) : 'Groups must be a array',
      Properties+::: { Groups: Groups },
    },
    '#withRoles': d.fn('`withRoles` Roles ', [d.arg('Roles', d.T.array)]),
    withRoles(Roles): {
      assert std.isArray(Roles) : 'Roles must be a array',
      Properties+::: { Roles: Roles },
    },
    '#withUsers': d.fn('`withUsers` Users ', [d.arg('Users', d.T.array)]),
    withUsers(Users): {
      assert std.isArray(Users) : 'Users must be a array',
      Properties+::: { Users: Users },
    },
  },
  Role: {
    '#': d.pkg(
      name='Role',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Creates a new role for your AWS-account.For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the *IAM User Guide*. For information about quotas for role names and the number of roles you can create, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::Role Resource
        * AssumeRolePolicyDocument The trust policy that is associated with this role. Trust policies define which entities can assume the role. You can associate only one trust policy with a role. For an example of a policy that can be used to assume a role, see [Template Examples](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#aws-resource-iam-role--examples). For more information about the elements that you can use in an IAM policy, see [Policy Elements Reference](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements.html) in the *User Guide*.
      |||,
      args=[
        d.arg('AssumeRolePolicyDocument', ''),
      ]
    ),
    new(
      AssumeRolePolicyDocument,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        AssumeRolePolicyDocument: AssumeRolePolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::Role',
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
    '#withManagedPolicyArns': d.fn('`withManagedPolicyArns` ManagedPolicyArns ', [d.arg('ManagedPolicyArns', d.T.array)]),
    withManagedPolicyArns(ManagedPolicyArns): {
      assert std.isArray(ManagedPolicyArns) : 'ManagedPolicyArns must be a array',
      Properties+::: { ManagedPolicyArns: ManagedPolicyArns },
    },
    '#withMaxSessionDuration': d.fn('`withMaxSessionDuration` MaxSessionDuration ', [d.arg('MaxSessionDuration', d.T.integer)]),
    withMaxSessionDuration(MaxSessionDuration): {
      assert std.isNumber(MaxSessionDuration) : 'MaxSessionDuration must be a integer',
      Properties+::: { MaxSessionDuration: MaxSessionDuration },
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withPermissionsBoundary': d.fn('`withPermissionsBoundary` PermissionsBoundary ', [d.arg('PermissionsBoundary', d.T.string)]),
    withPermissionsBoundary(PermissionsBoundary): {
      assert std.isString(PermissionsBoundary) : 'PermissionsBoundary must be a string',
      Properties+::: { PermissionsBoundary: PermissionsBoundary },
    },
    '#withPolicies': d.fn('`withPolicies` Policies ', [d.arg('Policies', d.T.array)]),
    withPolicies(Policies): {
      assert std.isArray(Policies) : 'Policies must be a array',
      Properties+::: { Policies: Policies },
    },
    '#withRoleId': d.fn('`withRoleId` RoleId ', [d.arg('RoleId', d.T.string)]),
    withRoleId(RoleId): {
      assert std.isString(RoleId) : 'RoleId must be a string',
      Properties+::: { RoleId: RoleId },
    },
    '#withRoleName': d.fn('`withRoleName` RoleName ', [d.arg('RoleName', d.T.string)]),
    withRoleName(RoleName): {
      assert std.isString(RoleName) : 'RoleName must be a string',
      Properties+::: { RoleName: RoleName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  RolePolicy: {
    '#': d.pkg(
      name='RolePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Adds or updates an inline policy document that is embedded in the specified IAM role. When you embed an inline policy in a role, the inline policy is used as part of the roles access (permissions) policy. The roles trust policy is created at the same time as the role, using [CreateRole](https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html). You can update a roles trust policy using [UpdateAssumeRolePolicy](https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html). For information about roles, see [roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html) in the *IAM User Guide*. A role can also have a managed policy attached to it. To attach a managed policy to a role, use [AWS::IAM::Role](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html). To create a new managed policy, use [AWS::IAM::ManagedPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html). For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*. For information about the maximum number of inline policies that you can embed with a role, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::RolePolicy Resource
        * PolicyName The name of the policy document. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
        * RoleName The name of the role to associate the policy with. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('RoleName', 'd.T.string'),
      ]
    ),
    new(
      PolicyName,
      RoleName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(RoleName) : 'RoleName must be a string',
        RoleName: RoleName,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::RolePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument', d.T.object)]),
    withPolicyDocument(PolicyDocument): {
      assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
      Properties+::: { PolicyDocument: PolicyDocument },
    },
  },
  SAMLProvider: {
    '#': d.pkg(
      name='SAMLProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::SAMLProvider',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::SAMLProvider Resource
        * SamlMetadataDocument 
      |||,
      args=[
        d.arg('SamlMetadataDocument', 'd.T.string'),
      ]
    ),
    new(
      SamlMetadataDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SamlMetadataDocument) : 'SamlMetadataDocument must be a string',
        SamlMetadataDocument: SamlMetadataDocument,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::SAMLProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServerCertificate: {
    '#': d.pkg(
      name='ServerCertificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::ServerCertificate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::ServerCertificate Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IAM::ServerCertificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateBody': d.fn('`withCertificateBody` CertificateBody ', [d.arg('CertificateBody', d.T.string)]),
    withCertificateBody(CertificateBody): {
      assert std.isString(CertificateBody) : 'CertificateBody must be a string',
      Properties+::: { CertificateBody: CertificateBody },
    },
    '#withCertificateChain': d.fn('`withCertificateChain` CertificateChain ', [d.arg('CertificateChain', d.T.string)]),
    withCertificateChain(CertificateChain): {
      assert std.isString(CertificateChain) : 'CertificateChain must be a string',
      Properties+::: { CertificateChain: CertificateChain },
    },
    '#withServerCertificateName': d.fn('`withServerCertificateName` ServerCertificateName ', [d.arg('ServerCertificateName', d.T.string)]),
    withServerCertificateName(ServerCertificateName): {
      assert std.isString(ServerCertificateName) : 'ServerCertificateName must be a string',
      Properties+::: { ServerCertificateName: ServerCertificateName },
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withPrivateKey': d.fn('`withPrivateKey` PrivateKey ', [d.arg('PrivateKey', d.T.string)]),
    withPrivateKey(PrivateKey): {
      assert std.isString(PrivateKey) : 'PrivateKey must be a string',
      Properties+::: { PrivateKey: PrivateKey },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServiceLinkedRole: {
    '#': d.pkg(
      name='ServiceLinkedRole',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::ServiceLinkedRole',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::ServiceLinkedRole Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IAM::ServiceLinkedRole',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRoleName': d.fn('`withRoleName` RoleName ', [d.arg('RoleName', d.T.string)]),
    withRoleName(RoleName): {
      assert std.isString(RoleName) : 'RoleName must be a string',
      Properties+::: { RoleName: RoleName },
    },
    '#withCustomSuffix': d.fn('`withCustomSuffix` CustomSuffix ', [d.arg('CustomSuffix', d.T.string)]),
    withCustomSuffix(CustomSuffix): {
      assert std.isString(CustomSuffix) : 'CustomSuffix must be a string',
      Properties+::: { CustomSuffix: CustomSuffix },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAWSServiceName': d.fn('`withAWSServiceName` AWSServiceName ', [d.arg('AWSServiceName', d.T.string)]),
    withAWSServiceName(AWSServiceName): {
      assert std.isString(AWSServiceName) : 'AWSServiceName must be a string',
      Properties+::: { AWSServiceName: AWSServiceName },
    },
  },
  User: {
    '#': d.pkg(
      name='User',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Creates a new IAM user for your AWS-account.For information about quotas for the number of IAM users you can create, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::User Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IAM::User',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withManagedPolicyArns': d.fn('`withManagedPolicyArns` ManagedPolicyArns ', [d.arg('ManagedPolicyArns', d.T.array)]),
    withManagedPolicyArns(ManagedPolicyArns): {
      assert std.isArray(ManagedPolicyArns) : 'ManagedPolicyArns must be a array',
      Properties+::: { ManagedPolicyArns: ManagedPolicyArns },
    },
    '#withPolicies': d.fn('`withPolicies` Policies ', [d.arg('Policies', d.T.array)]),
    withPolicies(Policies): {
      assert std.isArray(Policies) : 'Policies must be a array',
      Properties+::: { Policies: Policies },
    },
    '#withUserName': d.fn('`withUserName` UserName ', [d.arg('UserName', d.T.string)]),
    withUserName(UserName): {
      assert std.isString(UserName) : 'UserName must be a string',
      Properties+::: { UserName: UserName },
    },
    '#withGroups': d.fn('`withGroups` Groups ', [d.arg('Groups', d.T.array)]),
    withGroups(Groups): {
      assert std.isArray(Groups) : 'Groups must be a array',
      Properties+::: { Groups: Groups },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withLoginProfile': d.fn('`withLoginProfile` LoginProfile ', [d.arg('LoginProfile', d.T.object)]),
    withLoginProfile(LoginProfile): {
      assert std.isObject(LoginProfile) : 'LoginProfile must be a object',
      Properties+::: { LoginProfile: LoginProfile },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withPermissionsBoundary': d.fn('`withPermissionsBoundary` PermissionsBoundary ', [d.arg('PermissionsBoundary', d.T.string)]),
    withPermissionsBoundary(PermissionsBoundary): {
      assert std.isString(PermissionsBoundary) : 'PermissionsBoundary must be a string',
      Properties+::: { PermissionsBoundary: PermissionsBoundary },
    },
  },
  UserPolicy: {
    '#': d.pkg(
      name='UserPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Adds or updates an inline policy document that is embedded in the specified IAM user. An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use [AWS::IAM::User](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html). To create a new managed policy, use [AWS::IAM::ManagedPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html). For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*. For information about the maximum number of inline policies that you can embed in a user, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::UserPolicy Resource
        * PolicyName The name of the policy document. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
        * UserName The name of the user to associate the policy with. This parameter allows (through its [regex pattern](https://docs.aws.amazon.com/http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('UserName', 'd.T.string'),
      ]
    ),
    new(
      PolicyName,
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::UserPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyDocument': d.fn('`withPolicyDocument` PolicyDocument ', [d.arg('PolicyDocument', d.T.object)]),
    withPolicyDocument(PolicyDocument): {
      assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
      Properties+::: { PolicyDocument: PolicyDocument },
    },
  },
  UserToGroupAddition: {
    '#': d.pkg(
      name='UserToGroupAddition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::UserToGroupAddition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::UserToGroupAddition Resource
        * GroupName 
        * Users 
      |||,
      args=[
        d.arg('GroupName', 'd.T.string'),
        d.arg('Users', 'd.T.array'),
      ]
    ),
    new(
      GroupName,
      Users,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupName) : 'GroupName must be a string',
        GroupName: GroupName,
        assert std.isArray(Users) : 'Users must be a array',
        Users: Users,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::UserToGroupAddition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  VirtualMFADevice: {
    '#': d.pkg(
      name='VirtualMFADevice',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IAM.libsonnet',
      help='Resource Type definition for AWS::IAM::VirtualMFADevice',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IAM::VirtualMFADevice Resource
        * Users 
      |||,
      args=[
        d.arg('Users', 'd.T.array'),
      ]
    ),
    new(
      Users,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Users) : 'Users must be a array',
        Users: Users,
      },
      DependsOn:: [],
      Type: 'AWS::IAM::VirtualMFADevice',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVirtualMfaDeviceName': d.fn('`withVirtualMfaDeviceName` VirtualMfaDeviceName ', [d.arg('VirtualMfaDeviceName', d.T.string)]),
    withVirtualMfaDeviceName(VirtualMfaDeviceName): {
      assert std.isString(VirtualMfaDeviceName) : 'VirtualMfaDeviceName must be a string',
      Properties+::: { VirtualMfaDeviceName: VirtualMfaDeviceName },
    },
    '#withPath': d.fn('`withPath` Path ', [d.arg('Path', d.T.string)]),
    withPath(Path): {
      assert std.isString(Path) : 'Path must be a string',
      Properties+::: { Path: Path },
    },
    '#withSerialNumber': d.fn('`withSerialNumber` SerialNumber ', [d.arg('SerialNumber', d.T.string)]),
    withSerialNumber(SerialNumber): {
      assert std.isString(SerialNumber) : 'SerialNumber must be a string',
      Properties+::: { SerialNumber: SerialNumber },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
