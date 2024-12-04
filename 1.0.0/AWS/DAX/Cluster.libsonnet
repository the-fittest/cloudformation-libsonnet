{
  new(
    ReplicationFactor,
    IAMRoleARN,
    NodeType,
  ): {
    local base = self,
    Properties: {
      assert std.isNumber(ReplicationFactor) : 'ReplicationFactor must be a number',
      ReplicationFactor: ReplicationFactor,
      assert std.isString(IAMRoleARN) : 'IAMRoleARN must be a string',
      IAMRoleARN: IAMRoleARN,
      assert std.isString(NodeType) : 'NodeType must be a string',
      NodeType: NodeType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DAX::Cluster',
  },
  withSSESpecification(SSESpecification): {
    assert std.isObject(SSESpecification) : 'SSESpecification must be a object',
    Properties+::: {
      SSESpecification: SSESpecification,
    },
  },
  withClusterDiscoveryEndpointURL(ClusterDiscoveryEndpointURL): {
    assert std.isString(ClusterDiscoveryEndpointURL) : 'ClusterDiscoveryEndpointURL must be a string',
    Properties+::: {
      ClusterDiscoveryEndpointURL: ClusterDiscoveryEndpointURL,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withParameterGroupName(ParameterGroupName): {
    assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
    Properties+::: {
      ParameterGroupName: ParameterGroupName,
    },
  },
  withAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
    },
  },
  withAvailabilityZonesMixin(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: (if std.isArray(AvailabilityZones) then AvailabilityZones else [AvailabilityZones]),
    },
  },
  withSubnetGroupName(SubnetGroupName): {
    assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
    Properties+::: {
      SubnetGroupName: SubnetGroupName,
    },
  },
  withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
    Properties+::: {
      PreferredMaintenanceWindow: PreferredMaintenanceWindow,
    },
  },
  withClusterEndpointEncryptionType(ClusterEndpointEncryptionType): {
    assert std.isString(ClusterEndpointEncryptionType) : 'ClusterEndpointEncryptionType must be a string',
    Properties+::: {
      ClusterEndpointEncryptionType: ClusterEndpointEncryptionType,
    },
  },
  withNotificationTopicARN(NotificationTopicARN): {
    assert std.isString(NotificationTopicARN) : 'NotificationTopicARN must be a string',
    Properties+::: {
      NotificationTopicARN: NotificationTopicARN,
    },
  },
  withSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withClusterName(ClusterName): {
    assert std.isString(ClusterName) : 'ClusterName must be a string',
    Properties+::: {
      ClusterName: ClusterName,
    },
  },
  withClusterDiscoveryEndpoint(ClusterDiscoveryEndpoint): {
    assert std.isString(ClusterDiscoveryEndpoint) : 'ClusterDiscoveryEndpoint must be a string',
    Properties+::: {
      ClusterDiscoveryEndpoint: ClusterDiscoveryEndpoint,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
