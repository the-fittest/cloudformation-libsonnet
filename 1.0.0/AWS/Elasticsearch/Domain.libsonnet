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
    Type: 'AWS::Elasticsearch::Domain',
  },
  setElasticsearchClusterConfig(ElasticsearchClusterConfig): {
    Properties+::: {
      ElasticsearchClusterConfig:
        if !std.isObject(ElasticsearchClusterConfig) then (error 'ElasticsearchClusterConfig must be an object')
        else ElasticsearchClusterConfig,
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
  setElasticsearchVersion(ElasticsearchVersion): {
    Properties+::: {
      ElasticsearchVersion:
        if !std.isString(ElasticsearchVersion) then (error 'ElasticsearchVersion must be a string')
        else if std.isEmpty(ElasticsearchVersion) then (error 'ElasticsearchVersion must be not empty')
        else ElasticsearchVersion,
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
  setAccessPolicies(AccessPolicies): {
    Properties+::: {
      AccessPolicies:
        if !std.isObject(AccessPolicies) then (error 'AccessPolicies must be an object')
        else AccessPolicies,
    },
  },
  setDomainEndpointOptions(DomainEndpointOptions): {
    Properties+::: {
      DomainEndpointOptions:
        if !std.isObject(DomainEndpointOptions) then (error 'DomainEndpointOptions must be an object')
        else DomainEndpointOptions,
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
  setCognitoOptions(CognitoOptions): {
    Properties+::: {
      CognitoOptions:
        if !std.isObject(CognitoOptions) then (error 'CognitoOptions must be an object')
        else CognitoOptions,
    },
  },
  setAdvancedOptions(AdvancedOptions): {
    Properties+::: {
      AdvancedOptions:
        if !std.isObject(AdvancedOptions) then (error 'AdvancedOptions must be an object')
        else AdvancedOptions,
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
