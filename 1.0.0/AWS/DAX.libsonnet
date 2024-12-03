local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DAX.libsonnet',
      help='Resource Type definition for AWS::DAX::Cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DAX::Cluster Resource
        * ReplicationFactor 
        * IAMRoleARN 
        * NodeType 
      |||,
      args=[
        d.arg('ReplicationFactor', 'd.T.integer'),
        d.arg('IAMRoleARN', 'd.T.string'),
        d.arg('NodeType', 'd.T.string'),
      ]
    ),
    new(
      ReplicationFactor,
      IAMRoleARN,
      NodeType,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(ReplicationFactor) : 'ReplicationFactor must be a integer',
        ReplicationFactor: ReplicationFactor,
        assert std.isString(IAMRoleARN) : 'IAMRoleARN must be a string',
        IAMRoleARN: IAMRoleARN,
        assert std.isString(NodeType) : 'NodeType must be a string',
        NodeType: NodeType,
      },
      DependsOn:: [],
      Type: 'AWS::DAX::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSSESpecification': d.fn('`withSSESpecification` SSESpecification ', [d.arg('SSESpecification', d.T.object)]),
    withSSESpecification(SSESpecification): {
      assert std.isObject(SSESpecification) : 'SSESpecification must be a object',
      Properties+::: { SSESpecification: SSESpecification },
    },
    '#withClusterDiscoveryEndpointURL': d.fn('`withClusterDiscoveryEndpointURL` ClusterDiscoveryEndpointURL ', [d.arg('ClusterDiscoveryEndpointURL', d.T.string)]),
    withClusterDiscoveryEndpointURL(ClusterDiscoveryEndpointURL): {
      assert std.isString(ClusterDiscoveryEndpointURL) : 'ClusterDiscoveryEndpointURL must be a string',
      Properties+::: { ClusterDiscoveryEndpointURL: ClusterDiscoveryEndpointURL },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withParameterGroupName': d.fn('`withParameterGroupName` ParameterGroupName ', [d.arg('ParameterGroupName', d.T.string)]),
    withParameterGroupName(ParameterGroupName): {
      assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
      Properties+::: { ParameterGroupName: ParameterGroupName },
    },
    '#withAvailabilityZones': d.fn('`withAvailabilityZones` AvailabilityZones ', [d.arg('AvailabilityZones', d.T.array)]),
    withAvailabilityZones(AvailabilityZones): {
      assert std.isArray(AvailabilityZones) : 'AvailabilityZones must be a array',
      Properties+::: { AvailabilityZones: AvailabilityZones },
    },
    '#withSubnetGroupName': d.fn('`withSubnetGroupName` SubnetGroupName ', [d.arg('SubnetGroupName', d.T.string)]),
    withSubnetGroupName(SubnetGroupName): {
      assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
      Properties+::: { SubnetGroupName: SubnetGroupName },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withClusterEndpointEncryptionType': d.fn('`withClusterEndpointEncryptionType` ClusterEndpointEncryptionType ', [d.arg('ClusterEndpointEncryptionType', d.T.string)]),
    withClusterEndpointEncryptionType(ClusterEndpointEncryptionType): {
      assert std.isString(ClusterEndpointEncryptionType) : 'ClusterEndpointEncryptionType must be a string',
      Properties+::: { ClusterEndpointEncryptionType: ClusterEndpointEncryptionType },
    },
    '#withNotificationTopicARN': d.fn('`withNotificationTopicARN` NotificationTopicARN ', [d.arg('NotificationTopicARN', d.T.string)]),
    withNotificationTopicARN(NotificationTopicARN): {
      assert std.isString(NotificationTopicARN) : 'NotificationTopicARN must be a string',
      Properties+::: { NotificationTopicARN: NotificationTopicARN },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withClusterName': d.fn('`withClusterName` ClusterName ', [d.arg('ClusterName', d.T.string)]),
    withClusterName(ClusterName): {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      Properties+::: { ClusterName: ClusterName },
    },
    '#withClusterDiscoveryEndpoint': d.fn('`withClusterDiscoveryEndpoint` ClusterDiscoveryEndpoint ', [d.arg('ClusterDiscoveryEndpoint', d.T.string)]),
    withClusterDiscoveryEndpoint(ClusterDiscoveryEndpoint): {
      assert std.isString(ClusterDiscoveryEndpoint) : 'ClusterDiscoveryEndpoint must be a string',
      Properties+::: { ClusterDiscoveryEndpoint: ClusterDiscoveryEndpoint },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ParameterGroup: {
    '#': d.pkg(
      name='ParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DAX.libsonnet',
      help='Resource Type definition for AWS::DAX::ParameterGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DAX::ParameterGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DAX::ParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withParameterNameValues': d.fn('`withParameterNameValues` ParameterNameValues ', [d.arg('ParameterNameValues', d.T.object)]),
    withParameterNameValues(ParameterNameValues): {
      assert std.isObject(ParameterNameValues) : 'ParameterNameValues must be a object',
      Properties+::: { ParameterNameValues: ParameterNameValues },
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
    '#withParameterGroupName': d.fn('`withParameterGroupName` ParameterGroupName ', [d.arg('ParameterGroupName', d.T.string)]),
    withParameterGroupName(ParameterGroupName): {
      assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
      Properties+::: { ParameterGroupName: ParameterGroupName },
    },
  },
  SubnetGroup: {
    '#': d.pkg(
      name='SubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DAX.libsonnet',
      help='Resource Type definition for AWS::DAX::SubnetGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DAX::SubnetGroup Resource
        * SubnetIds 
      |||,
      args=[
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::DAX::SubnetGroup',
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
    '#withSubnetGroupName': d.fn('`withSubnetGroupName` SubnetGroupName ', [d.arg('SubnetGroupName', d.T.string)]),
    withSubnetGroupName(SubnetGroupName): {
      assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
      Properties+::: { SubnetGroupName: SubnetGroupName },
    },
  },
}
