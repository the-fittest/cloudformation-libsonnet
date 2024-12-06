{
  new(
    ReplicationFactor,
    IAMRoleARN,
    NodeType,
  ): {
    local base = self,
    Properties: {
      ReplicationFactor:
        if !std.isNumber(ReplicationFactor) then (error 'ReplicationFactor must be an number')
        else ReplicationFactor,
      IAMRoleARN:
        if !std.isString(IAMRoleARN) then (error 'IAMRoleARN must be a string')
        else if std.isEmpty(IAMRoleARN) then (error 'IAMRoleARN must be not empty')
        else IAMRoleARN,
      NodeType:
        if !std.isString(NodeType) then (error 'NodeType must be a string')
        else if std.isEmpty(NodeType) then (error 'NodeType must be not empty')
        else NodeType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DAX::Cluster',
  },
  setSSESpecification(SSESpecification): {
    Properties+::: {
      SSESpecification:
        if !std.isObject(SSESpecification) then (error 'SSESpecification must be an object')
        else SSESpecification,
    },
  },
  setClusterDiscoveryEndpointURL(ClusterDiscoveryEndpointURL): {
    Properties+::: {
      ClusterDiscoveryEndpointURL:
        if !std.isString(ClusterDiscoveryEndpointURL) then (error 'ClusterDiscoveryEndpointURL must be a string')
        else if std.isEmpty(ClusterDiscoveryEndpointURL) then (error 'ClusterDiscoveryEndpointURL must be not empty')
        else ClusterDiscoveryEndpointURL,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setParameterGroupName(ParameterGroupName): {
    Properties+::: {
      ParameterGroupName:
        if !std.isString(ParameterGroupName) then (error 'ParameterGroupName must be a string')
        else if std.isEmpty(ParameterGroupName) then (error 'ParameterGroupName must be not empty')
        else ParameterGroupName,
    },
  },
  setAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones:
        if !std.isArray(AvailabilityZones) then (error 'AvailabilityZones must be an array')
        else AvailabilityZones,
    },
  },
  pushAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: AvailabilityZones,
    },
  },
  setSubnetGroupName(SubnetGroupName): {
    Properties+::: {
      SubnetGroupName:
        if !std.isString(SubnetGroupName) then (error 'SubnetGroupName must be a string')
        else if std.isEmpty(SubnetGroupName) then (error 'SubnetGroupName must be not empty')
        else SubnetGroupName,
    },
  },
  setPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    Properties+::: {
      PreferredMaintenanceWindow:
        if !std.isString(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be a string')
        else if std.isEmpty(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be not empty')
        else PreferredMaintenanceWindow,
    },
  },
  setClusterEndpointEncryptionType(ClusterEndpointEncryptionType): {
    Properties+::: {
      ClusterEndpointEncryptionType:
        if !std.isString(ClusterEndpointEncryptionType) then (error 'ClusterEndpointEncryptionType must be a string')
        else if std.isEmpty(ClusterEndpointEncryptionType) then (error 'ClusterEndpointEncryptionType must be not empty')
        else ClusterEndpointEncryptionType,
    },
  },
  setNotificationTopicARN(NotificationTopicARN): {
    Properties+::: {
      NotificationTopicARN:
        if !std.isString(NotificationTopicARN) then (error 'NotificationTopicARN must be a string')
        else if std.isEmpty(NotificationTopicARN) then (error 'NotificationTopicARN must be not empty')
        else NotificationTopicARN,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setClusterName(ClusterName): {
    Properties+::: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else ClusterName,
    },
  },
  setClusterDiscoveryEndpoint(ClusterDiscoveryEndpoint): {
    Properties+::: {
      ClusterDiscoveryEndpoint:
        if !std.isString(ClusterDiscoveryEndpoint) then (error 'ClusterDiscoveryEndpoint must be a string')
        else if std.isEmpty(ClusterDiscoveryEndpoint) then (error 'ClusterDiscoveryEndpoint must be not empty')
        else ClusterDiscoveryEndpoint,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
