local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Account: {
    '#': d.pkg(
      name='Account',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Organizations.libsonnet',
      help='You can use AWS::Organizations::Account to manage accounts in organization.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Organizations::Account Resource
        * AccountName The friendly name of the member account.
        * Email The email address of the owner to assign to the new member account.
      |||,
      args=[
        d.arg('AccountName', 'd.T.string'),
        d.arg('Email', 'd.T.string'),
      ]
    ),
    new(
      AccountName,
      Email,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccountName) : 'AccountName must be a string',
        AccountName: AccountName,
        assert std.isString(Email) : 'Email must be a string',
        Email: Email,
      },
      DependsOn:: [],
      Type: 'AWS::Organizations::Account',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRoleName': d.fn('`withRoleName` RoleName ', [d.arg('RoleName', d.T.string)]),
    withRoleName(RoleName): {
      assert std.isString(RoleName) : 'RoleName must be a string',
      Properties+::: { RoleName: RoleName },
    },
    '#withParentIds': d.fn('`withParentIds` ParentIds ', [d.arg('ParentIds', d.T.array)]),
    withParentIds(ParentIds): {
      assert std.isArray(ParentIds) : 'ParentIds must be a array',
      Properties+::: { ParentIds: ParentIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withJoinedMethod': d.fn('`withJoinedMethod` JoinedMethod ', [d.arg('JoinedMethod', d.T.string)]),
    withJoinedMethod(JoinedMethod): {
      assert std.isString(JoinedMethod) : 'JoinedMethod must be a string',
      assert JoinedMethod == 'INVITED' || JoinedMethod == 'CREATED' : "JoinedMethod must be either 'INVITED' or 'CREATED'",
      Properties+::: { JoinedMethod: JoinedMethod },
    },
    '#withJoinedTimestamp': d.fn('`withJoinedTimestamp` JoinedTimestamp ', [d.arg('JoinedTimestamp', d.T.string)]),
    withJoinedTimestamp(JoinedTimestamp): {
      assert std.isString(JoinedTimestamp) : 'JoinedTimestamp must be a string',
      Properties+::: { JoinedTimestamp: JoinedTimestamp },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'SUSPENDED' || Status == 'PENDING_CLOSURE' : "Status must be either 'ACTIVE' or 'SUSPENDED' or 'PENDING_CLOSURE'",
      Properties+::: { Status: Status },
    },
  },
  Organization: {
    '#': d.pkg(
      name='Organization',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Organizations.libsonnet',
      help='Resource schema for AWS::Organizations::Organization',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Organizations::Organization Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Organizations::Organization',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withFeatureSet': d.fn('`withFeatureSet` FeatureSet ', [d.arg('FeatureSet', d.T.string)]),
    withFeatureSet(FeatureSet): {
      assert std.isString(FeatureSet) : 'FeatureSet must be a string',
      assert FeatureSet == 'ALL' || FeatureSet == 'CONSOLIDATED_BILLING' : "FeatureSet must be either 'ALL' or 'CONSOLIDATED_BILLING'",
      Properties+::: { FeatureSet: FeatureSet },
    },
    '#withManagementAccountArn': d.fn('`withManagementAccountArn` ManagementAccountArn ', [d.arg('ManagementAccountArn', d.T.string)]),
    withManagementAccountArn(ManagementAccountArn): {
      assert std.isString(ManagementAccountArn) : 'ManagementAccountArn must be a string',
      Properties+::: { ManagementAccountArn: ManagementAccountArn },
    },
    '#withManagementAccountId': d.fn('`withManagementAccountId` ManagementAccountId ', [d.arg('ManagementAccountId', d.T.string)]),
    withManagementAccountId(ManagementAccountId): {
      assert std.isString(ManagementAccountId) : 'ManagementAccountId must be a string',
      Properties+::: { ManagementAccountId: ManagementAccountId },
    },
    '#withManagementAccountEmail': d.fn('`withManagementAccountEmail` ManagementAccountEmail ', [d.arg('ManagementAccountEmail', d.T.string)]),
    withManagementAccountEmail(ManagementAccountEmail): {
      assert std.isString(ManagementAccountEmail) : 'ManagementAccountEmail must be a string',
      Properties+::: { ManagementAccountEmail: ManagementAccountEmail },
    },
    '#withRootId': d.fn('`withRootId` RootId ', [d.arg('RootId', d.T.string)]),
    withRootId(RootId): {
      assert std.isString(RootId) : 'RootId must be a string',
      Properties+::: { RootId: RootId },
    },
  },
  OrganizationalUnit: {
    '#': d.pkg(
      name='OrganizationalUnit',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Organizations.libsonnet',
      help='You can use organizational units (OUs) to group accounts together to administer as a single unit. This greatly simplifies the management of your accounts. For example, you can attach a policy-based control to an OU, and all accounts within the OU automatically inherit the policy. You can create multiple OUs within a single organization, and you can create OUs within other OUs. Each OU can contain multiple accounts, and you can move accounts from one OU to another. However, OU names must be unique within a parent OU or root.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Organizations::OrganizationalUnit Resource
        * Name The friendly name of this OU.
        * ParentId The unique identifier (ID) of the parent root or OU that you want to create the new OU in.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ParentId', 'd.T.string'),
      ]
    ),
    new(
      Name,
      ParentId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ParentId) : 'ParentId must be a string',
        ParentId: ParentId,
      },
      DependsOn:: [],
      Type: 'AWS::Organizations::OrganizationalUnit',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Organizations.libsonnet',
      help='Policies in AWS Organizations enable you to manage different features of the AWS accounts in your organization.You can use policies when all features are enabled in your organization.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Organizations::Policy Resource
        * Name Name of the Policy
        * Type The type of policy to create. You can specify one of the following values: AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY, TAG_POLICY, CHATBOT_POLICY, RESOURCE_CONTROL_POLICY
        * Content The Policy text content. For AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
        d.arg('Content', ''),
      ]
    ),
    new(
      Name,
      Type,
      Content,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'SERVICE_CONTROL_POLICY' || Type == 'AISERVICES_OPT_OUT_POLICY' || Type == 'BACKUP_POLICY' || Type == 'TAG_POLICY' || Type == 'CHATBOT_POLICY' || Type == 'RESOURCE_CONTROL_POLICY' : "Type must be either 'SERVICE_CONTROL_POLICY' or 'AISERVICES_OPT_OUT_POLICY' or 'BACKUP_POLICY' or 'TAG_POLICY' or 'CHATBOT_POLICY' or 'RESOURCE_CONTROL_POLICY'",
        Type: Type,
        // Type: object,string
        Content: Content,
      },
      DependsOn:: [],
      Type: 'AWS::Organizations::Policy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTargetIds': d.fn('`withTargetIds` TargetIds ', [d.arg('TargetIds', d.T.array)]),
    withTargetIds(TargetIds): {
      assert std.isArray(TargetIds) : 'TargetIds must be a array',
      Properties+::: { TargetIds: TargetIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAwsManaged': d.fn('`withAwsManaged` AwsManaged ', [d.arg('AwsManaged', d.T.boolean)]),
    withAwsManaged(AwsManaged): {
      assert std.isBoolean(AwsManaged) : 'AwsManaged must be a boolean',
      Properties+::: { AwsManaged: AwsManaged },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Organizations.libsonnet',
      help='You can use AWS::Organizations::ResourcePolicy to delegate policy management for AWS Organizations to specified member accounts to perform policy actions that are by default available only to the management account.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Organizations::ResourcePolicy Resource
        * Content The policy document. For AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it.
      |||,
      args=[
        d.arg('Content', ''),
      ]
    ),
    new(
      Content,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        Content: Content,
      },
      DependsOn:: [],
      Type: 'AWS::Organizations::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
}
