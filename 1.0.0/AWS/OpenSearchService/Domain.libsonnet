{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpenSearchService::Domain',
  },
  setClusterConfig(ClusterConfig): {
    Properties+::: {
      ClusterConfig:
        if !std.isObject(ClusterConfig) then (error 'ClusterConfig must be an object')
        else ClusterConfig,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else DomainName,
    },
  },
  setAccessPolicies(AccessPolicies): {
    Properties+::: {
      AccessPolicies:
        if !std.isObject(AccessPolicies) then (error 'AccessPolicies must be an object')
        else AccessPolicies,
    },
  },
  setIPAddressType(IPAddressType): {
    Properties+::: {
      IPAddressType:
        if !std.isString(IPAddressType) then (error 'IPAddressType must be a string')
        else if std.isEmpty(IPAddressType) then (error 'IPAddressType must be not empty')
        else IPAddressType,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setAdvancedOptions(AdvancedOptions): {
    Properties+::: {
      AdvancedOptions:
        if !std.isObject(AdvancedOptions) then (error 'AdvancedOptions must be an object')
        else AdvancedOptions,
    },
  },
  setLogPublishingOptions(LogPublishingOptions): {
    Properties+::: {
      LogPublishingOptions:
        if !std.isObject(LogPublishingOptions) then (error 'LogPublishingOptions must be an object')
        else LogPublishingOptions,
    },
  },
  setSnapshotOptions(SnapshotOptions): {
    Properties+::: {
      SnapshotOptions:
        if !std.isObject(SnapshotOptions) then (error 'SnapshotOptions must be an object')
        else SnapshotOptions,
    },
  },
  setVPCOptions(VPCOptions): {
    Properties+::: {
      VPCOptions:
        if !std.isObject(VPCOptions) then (error 'VPCOptions must be an object')
        else VPCOptions,
    },
  },
  setNodeToNodeEncryptionOptions(NodeToNodeEncryptionOptions): {
    Properties+::: {
      NodeToNodeEncryptionOptions:
        if !std.isObject(NodeToNodeEncryptionOptions) then (error 'NodeToNodeEncryptionOptions must be an object')
        else NodeToNodeEncryptionOptions,
    },
  },
  setDomainEndpointOptions(DomainEndpointOptions): {
    Properties+::: {
      DomainEndpointOptions:
        if !std.isObject(DomainEndpointOptions) then (error 'DomainEndpointOptions must be an object')
        else DomainEndpointOptions,
    },
  },
  setCognitoOptions(CognitoOptions): {
    Properties+::: {
      CognitoOptions:
        if !std.isObject(CognitoOptions) then (error 'CognitoOptions must be an object')
        else CognitoOptions,
    },
  },
  setAdvancedSecurityOptions(AdvancedSecurityOptions): {
    Properties+::: {
      AdvancedSecurityOptions:
        if !std.isObject(AdvancedSecurityOptions) then (error 'AdvancedSecurityOptions must be an object')
        else AdvancedSecurityOptions,
    },
  },
  setDomainEndpoint(DomainEndpoint): {
    Properties+::: {
      DomainEndpoint:
        if !std.isString(DomainEndpoint) then (error 'DomainEndpoint must be a string')
        else if std.isEmpty(DomainEndpoint) then (error 'DomainEndpoint must be not empty')
        else DomainEndpoint,
    },
  },
  setDomainEndpointV2(DomainEndpointV2): {
    Properties+::: {
      DomainEndpointV2:
        if !std.isString(DomainEndpointV2) then (error 'DomainEndpointV2 must be a string')
        else if std.isEmpty(DomainEndpointV2) then (error 'DomainEndpointV2 must be not empty')
        else DomainEndpointV2,
    },
  },
  setDomainEndpoints(DomainEndpoints): {
    Properties+::: {
      DomainEndpoints:
        if !std.isObject(DomainEndpoints) then (error 'DomainEndpoints must be an object')
        else DomainEndpoints,
    },
  },
  setEBSOptions(EBSOptions): {
    Properties+::: {
      EBSOptions:
        if !std.isObject(EBSOptions) then (error 'EBSOptions must be an object')
        else EBSOptions,
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
  setDomainArn(DomainArn): {
    Properties+::: {
      DomainArn:
        if !std.isString(DomainArn) then (error 'DomainArn must be a string')
        else if std.isEmpty(DomainArn) then (error 'DomainArn must be not empty')
        else DomainArn,
    },
  },
  setEncryptionAtRestOptions(EncryptionAtRestOptions): {
    Properties+::: {
      EncryptionAtRestOptions:
        if !std.isObject(EncryptionAtRestOptions) then (error 'EncryptionAtRestOptions must be an object')
        else EncryptionAtRestOptions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setServiceSoftwareOptions(ServiceSoftwareOptions): {
    Properties+::: {
      ServiceSoftwareOptions:
        if !std.isObject(ServiceSoftwareOptions) then (error 'ServiceSoftwareOptions must be an object')
        else ServiceSoftwareOptions,
    },
  },
  setOffPeakWindowOptions(OffPeakWindowOptions): {
    Properties+::: {
      OffPeakWindowOptions:
        if !std.isObject(OffPeakWindowOptions) then (error 'OffPeakWindowOptions must be an object')
        else OffPeakWindowOptions,
    },
  },
  setSoftwareUpdateOptions(SoftwareUpdateOptions): {
    Properties+::: {
      SoftwareUpdateOptions:
        if !std.isObject(SoftwareUpdateOptions) then (error 'SoftwareUpdateOptions must be an object')
        else SoftwareUpdateOptions,
    },
  },
  setSkipShardMigrationWait(SkipShardMigrationWait): {
    Properties+::: {
      SkipShardMigrationWait:
        if !std.isBoolean(SkipShardMigrationWait) then (error 'SkipShardMigrationWait must be a boolean') else SkipShardMigrationWait,
    },
  },
  setIdentityCenterOptions(IdentityCenterOptions): {
    Properties+::: {
      IdentityCenterOptions:
        if !std.isObject(IdentityCenterOptions) then (error 'IdentityCenterOptions must be an object')
        else IdentityCenterOptions,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
