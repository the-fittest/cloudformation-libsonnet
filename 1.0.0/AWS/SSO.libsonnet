local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSO.libsonnet',
      help='Resource Type definition for Identity Center (SSO) Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSO::Application Resource
        * Name The name you want to assign to this Identity Center (SSO) Application
        * InstanceArn The ARN of the instance of IAM Identity Center under which the operation will run
        * ApplicationProviderArn The ARN of the application provider under which the operation will run
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('ApplicationProviderArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      InstanceArn,
      ApplicationProviderArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(ApplicationProviderArn) : 'ApplicationProviderArn must be a string',
        ApplicationProviderArn: ApplicationProviderArn,
      },
      DependsOn:: [],
      Type: 'AWS::SSO::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ENABLED' || Status == 'DISABLED' : "Status must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { Status: Status },
    },
    '#withPortalOptions': d.fn('`withPortalOptions` PortalOptions ', [d.arg('PortalOptions', d.T.object)]),
    withPortalOptions(PortalOptions): {
      assert std.isObject(PortalOptions) : 'PortalOptions must be a object',
      Properties+::: { PortalOptions: PortalOptions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ApplicationAssignment: {
    '#': d.pkg(
      name='ApplicationAssignment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSO.libsonnet',
      help='Resource Type definition for SSO application access grant to a user or group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSO::ApplicationAssignment Resource
        * ApplicationArn The ARN of the application.
        * PrincipalType The entity type for which the assignment will be created.
        * PrincipalId An identifier for an object in IAM Identity Center, such as a user or group
      |||,
      args=[
        d.arg('ApplicationArn', 'd.T.string'),
        d.arg('PrincipalType', 'd.T.string'),
        d.arg('PrincipalId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationArn,
      PrincipalType,
      PrincipalId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
        ApplicationArn: ApplicationArn,
        assert std.isString(PrincipalType) : 'PrincipalType must be a string',
        assert PrincipalType == 'USER' || PrincipalType == 'GROUP' : "PrincipalType must be either 'USER' or 'GROUP'",
        PrincipalType: PrincipalType,
        assert std.isString(PrincipalId) : 'PrincipalId must be a string',
        PrincipalId: PrincipalId,
      },
      DependsOn:: [],
      Type: 'AWS::SSO::ApplicationAssignment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Assignment: {
    '#': d.pkg(
      name='Assignment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSO.libsonnet',
      help='Resource Type definition for SSO assignmet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSO::Assignment Resource
        * InstanceArn The sso instance that the permission set is owned.
        * TargetId The account id to be provisioned.
        * TargetType The type of resource to be provsioned to, only aws account now
        * PermissionSetArn The permission set that the assignemt will be assigned
        * PrincipalType The assignees type, user/group
        * PrincipalId The assignees identifier, user id/group id
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('TargetId', 'd.T.string'),
        d.arg('TargetType', 'd.T.string'),
        d.arg('PermissionSetArn', 'd.T.string'),
        d.arg('PrincipalType', 'd.T.string'),
        d.arg('PrincipalId', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      TargetId,
      TargetType,
      PermissionSetArn,
      PrincipalType,
      PrincipalId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(TargetId) : 'TargetId must be a string',
        TargetId: TargetId,
        assert std.isString(TargetType) : 'TargetType must be a string',
        assert TargetType == 'AWS_ACCOUNT' : "TargetType must be either 'AWS_ACCOUNT'",
        TargetType: TargetType,
        assert std.isString(PermissionSetArn) : 'PermissionSetArn must be a string',
        PermissionSetArn: PermissionSetArn,
        assert std.isString(PrincipalType) : 'PrincipalType must be a string',
        assert PrincipalType == 'USER' || PrincipalType == 'GROUP' : "PrincipalType must be either 'USER' or 'GROUP'",
        PrincipalType: PrincipalType,
        assert std.isString(PrincipalId) : 'PrincipalId must be a string',
        PrincipalId: PrincipalId,
      },
      DependsOn:: [],
      Type: 'AWS::SSO::Assignment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Instance: {
    '#': d.pkg(
      name='Instance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSO.libsonnet',
      help='Resource Type definition for Identity Center (SSO) Instance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSO::Instance Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SSO::Instance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withInstanceArn': d.fn('`withInstanceArn` InstanceArn ', [d.arg('InstanceArn', d.T.string)]),
    withInstanceArn(InstanceArn): {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      Properties+::: { InstanceArn: InstanceArn },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withIdentityStoreId': d.fn('`withIdentityStoreId` IdentityStoreId ', [d.arg('IdentityStoreId', d.T.string)]),
    withIdentityStoreId(IdentityStoreId): {
      assert std.isString(IdentityStoreId) : 'IdentityStoreId must be a string',
      Properties+::: { IdentityStoreId: IdentityStoreId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATE_IN_PROGRESS' || Status == 'DELETE_IN_PROGRESS' || Status == 'ACTIVE' : "Status must be either 'CREATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'ACTIVE'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  InstanceAccessControlAttributeConfiguration: {
    '#': d.pkg(
      name='InstanceAccessControlAttributeConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSO.libsonnet',
      help='Resource Type definition for SSO InstanceAccessControlAttributeConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSO::InstanceAccessControlAttributeConfiguration Resource
        * InstanceArn The ARN of the AWS SSO instance under which the operation will be executed.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
      },
      DependsOn:: [],
      Type: 'AWS::SSO::InstanceAccessControlAttributeConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInstanceAccessControlAttributeConfiguration': d.fn('`withInstanceAccessControlAttributeConfiguration` InstanceAccessControlAttributeConfiguration ', [d.arg('InstanceAccessControlAttributeConfiguration', d.T.object)]),
    withInstanceAccessControlAttributeConfiguration(InstanceAccessControlAttributeConfiguration): {
      assert std.isObject(InstanceAccessControlAttributeConfiguration) : 'InstanceAccessControlAttributeConfiguration must be a object',
      Properties+::: { InstanceAccessControlAttributeConfiguration: InstanceAccessControlAttributeConfiguration },
    },
    '#withAccessControlAttributes': d.fn('`withAccessControlAttributes` AccessControlAttributes ', [d.arg('AccessControlAttributes', d.T.array)]),
    withAccessControlAttributes(AccessControlAttributes): {
      assert std.isArray(AccessControlAttributes) : 'AccessControlAttributes must be a array',
      Properties+::: { AccessControlAttributes: AccessControlAttributes },
    },
  },
  PermissionSet: {
    '#': d.pkg(
      name='PermissionSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSO.libsonnet',
      help='Resource Type definition for SSO PermissionSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSO::PermissionSet Resource
        * Name The name you want to assign to this permission set.
        * InstanceArn The sso instance arn that the permission set is owned.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('InstanceArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      InstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
      },
      DependsOn:: [],
      Type: 'AWS::SSO::PermissionSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPermissionSetArn': d.fn('`withPermissionSetArn` PermissionSetArn ', [d.arg('PermissionSetArn', d.T.string)]),
    withPermissionSetArn(PermissionSetArn): {
      assert std.isString(PermissionSetArn) : 'PermissionSetArn must be a string',
      Properties+::: { PermissionSetArn: PermissionSetArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSessionDuration': d.fn('`withSessionDuration` SessionDuration ', [d.arg('SessionDuration', d.T.string)]),
    withSessionDuration(SessionDuration): {
      assert std.isString(SessionDuration) : 'SessionDuration must be a string',
      Properties+::: { SessionDuration: SessionDuration },
    },
    '#withRelayStateType': d.fn('`withRelayStateType` RelayStateType ', [d.arg('RelayStateType', d.T.string)]),
    withRelayStateType(RelayStateType): {
      assert std.isString(RelayStateType) : 'RelayStateType must be a string',
      Properties+::: { RelayStateType: RelayStateType },
    },
    '#withManagedPolicies': d.fn('`withManagedPolicies` ManagedPolicies ', [d.arg('ManagedPolicies', d.T.array)]),
    withManagedPolicies(ManagedPolicies): {
      assert std.isArray(ManagedPolicies) : 'ManagedPolicies must be a array',
      Properties+::: { ManagedPolicies: ManagedPolicies },
    },
    '#withInlinePolicy': d.fn('`withInlinePolicy` InlinePolicy ', [d.arg('InlinePolicy')]),
    withInlinePolicy(InlinePolicy): {
      // Type: object,string
      Properties+::: { InlinePolicy: InlinePolicy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCustomerManagedPolicyReferences': d.fn('`withCustomerManagedPolicyReferences` CustomerManagedPolicyReferences ', [d.arg('CustomerManagedPolicyReferences', d.T.array)]),
    withCustomerManagedPolicyReferences(CustomerManagedPolicyReferences): {
      assert std.isArray(CustomerManagedPolicyReferences) : 'CustomerManagedPolicyReferences must be a array',
      Properties+::: { CustomerManagedPolicyReferences: CustomerManagedPolicyReferences },
    },
    '#withPermissionsBoundary': d.fn('`withPermissionsBoundary` PermissionsBoundary ', [d.arg('PermissionsBoundary', d.T.object)]),
    withPermissionsBoundary(PermissionsBoundary): {
      assert std.isObject(PermissionsBoundary) : 'PermissionsBoundary must be a object',
      Properties+::: { PermissionsBoundary: PermissionsBoundary },
    },
  },
}
