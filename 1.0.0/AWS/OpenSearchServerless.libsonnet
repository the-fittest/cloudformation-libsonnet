local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessPolicy: {
    '#': d.pkg(
      name='AccessPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchServerless.libsonnet',
      help='Amazon OpenSearchServerless access policy resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchServerless::AccessPolicy Resource
        * Type 
        * Name The name of the policy
        * Policy The JSON policy document that is the content for the policy
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Policy', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Name,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Policy) : 'Policy must be a string',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::OpenSearchServerless::AccessPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  Collection: {
    '#': d.pkg(
      name='Collection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchServerless.libsonnet',
      help='Amazon OpenSearchServerless collection resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchServerless::Collection Resource
        * Name The name of the collection.The name must meet the following criteria:Unique to your account and AWS RegionStarts with a lowercase letterContains only lowercase letters a-z, the numbers 0-9 and the hyphen (-)Contains between 3 and 32 characters
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::OpenSearchServerless::Collection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
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
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCollectionEndpoint': d.fn('`withCollectionEndpoint` CollectionEndpoint ', [d.arg('CollectionEndpoint', d.T.string)]),
    withCollectionEndpoint(CollectionEndpoint): {
      assert std.isString(CollectionEndpoint) : 'CollectionEndpoint must be a string',
      Properties+::: { CollectionEndpoint: CollectionEndpoint },
    },
    '#withDashboardEndpoint': d.fn('`withDashboardEndpoint` DashboardEndpoint ', [d.arg('DashboardEndpoint', d.T.string)]),
    withDashboardEndpoint(DashboardEndpoint): {
      assert std.isString(DashboardEndpoint) : 'DashboardEndpoint must be a string',
      Properties+::: { DashboardEndpoint: DashboardEndpoint },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withStandbyReplicas': d.fn('`withStandbyReplicas` StandbyReplicas ', [d.arg('StandbyReplicas', d.T.string)]),
    withStandbyReplicas(StandbyReplicas): {
      assert std.isString(StandbyReplicas) : 'StandbyReplicas must be a string',
      Properties+::: { StandbyReplicas: StandbyReplicas },
    },
  },
  LifecyclePolicy: {
    '#': d.pkg(
      name='LifecyclePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchServerless.libsonnet',
      help='Amazon OpenSearchServerless lifecycle policy resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchServerless::LifecyclePolicy Resource
        * Type 
        * Name The name of the policy
        * Policy The JSON policy document that is the content for the policy
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Policy', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Name,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Policy) : 'Policy must be a string',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::OpenSearchServerless::LifecyclePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  SecurityConfig: {
    '#': d.pkg(
      name='SecurityConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchServerless.libsonnet',
      help='Amazon OpenSearchServerless security config resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchServerless::SecurityConfig Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::OpenSearchServerless::SecurityConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withSamlOptions': d.fn('`withSamlOptions` SamlOptions ', [d.arg('SamlOptions', d.T.object)]),
    withSamlOptions(SamlOptions): {
      assert std.isObject(SamlOptions) : 'SamlOptions must be a object',
      Properties+::: { SamlOptions: SamlOptions },
    },
    '#withIamIdentityCenterOptions': d.fn('`withIamIdentityCenterOptions` IamIdentityCenterOptions ', [d.arg('IamIdentityCenterOptions', d.T.object)]),
    withIamIdentityCenterOptions(IamIdentityCenterOptions): {
      assert std.isObject(IamIdentityCenterOptions) : 'IamIdentityCenterOptions must be a object',
      Properties+::: { IamIdentityCenterOptions: IamIdentityCenterOptions },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
  },
  SecurityPolicy: {
    '#': d.pkg(
      name='SecurityPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchServerless.libsonnet',
      help='Amazon OpenSearchServerless security policy resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchServerless::SecurityPolicy Resource
        * Type 
        * Name The name of the policy
        * Policy The JSON policy document that is the content for the policy
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Policy', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Name,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Policy) : 'Policy must be a string',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::OpenSearchServerless::SecurityPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  VpcEndpoint: {
    '#': d.pkg(
      name='VpcEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchServerless.libsonnet',
      help='Amazon OpenSearchServerless vpc endpoint resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchServerless::VpcEndpoint Resource
        * Name The name of the VPC Endpoint
        * VpcId The ID of the VPC in which the endpoint will be used.
        * SubnetIds The ID of one or more subnets in which to create an endpoint network interface
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      Name,
      VpcId,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::OpenSearchServerless::VpcEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
  },
}
