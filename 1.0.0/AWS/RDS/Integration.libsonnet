{
  new(
    SourceArn,
    TargetArn,
  ): {
    local base = self,
    Properties: {
      SourceArn:
        if !std.isString(SourceArn) then (error 'SourceArn must be a string')
        else if std.isEmpty(SourceArn) then (error 'SourceArn must be not empty')
        else SourceArn,
      TargetArn:
        if !std.isString(TargetArn) then (error 'TargetArn must be a string')
        else if std.isEmpty(TargetArn) then (error 'TargetArn must be not empty')
        else TargetArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::Integration',
  },
  setIntegrationName(IntegrationName): {
    Properties+::: {
      IntegrationName:
        if !std.isString(IntegrationName) then (error 'IntegrationName must be a string')
        else if std.isEmpty(IntegrationName) then (error 'IntegrationName must be not empty')
        else if std.length(IntegrationName) < 1 then error ('IntegrationName should have at least 1 characters')
        else if std.length(IntegrationName) > 64 then error ('IntegrationName should have not more than 64 characters')
        else IntegrationName,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDataFilter(DataFilter): {
    Properties+::: {
      DataFilter:
        if !std.isString(DataFilter) then (error 'DataFilter must be a string')
        else if std.isEmpty(DataFilter) then (error 'DataFilter must be not empty')
        else if std.length(DataFilter) < 1 then error ('DataFilter should have at least 1 characters')
        else if std.length(DataFilter) > 25600 then error ('DataFilter should have not more than 25600 characters')
        else DataFilter,
    },
  },
  setIntegrationArn(IntegrationArn): {
    Properties+::: {
      IntegrationArn:
        if !std.isString(IntegrationArn) then (error 'IntegrationArn must be a string')
        else if std.isEmpty(IntegrationArn) then (error 'IntegrationArn must be not empty')
        else IntegrationArn,
    },
  },
  setKMSKeyId(KMSKeyId): {
    Properties+::: {
      KMSKeyId:
        if !std.isString(KMSKeyId) then (error 'KMSKeyId must be a string')
        else if std.isEmpty(KMSKeyId) then (error 'KMSKeyId must be not empty')
        else KMSKeyId,
    },
  },
  setAdditionalEncryptionContext(AdditionalEncryptionContext): {
    Properties+::: {
      AdditionalEncryptionContext:
        if !std.isObject(AdditionalEncryptionContext) then (error 'AdditionalEncryptionContext must be an object')
        else AdditionalEncryptionContext,
    },
  },
  setCreateTime(CreateTime): {
    Properties+::: {
      CreateTime:
        if !std.isString(CreateTime) then (error 'CreateTime must be a string')
        else if std.isEmpty(CreateTime) then (error 'CreateTime must be not empty')
        else CreateTime,
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
