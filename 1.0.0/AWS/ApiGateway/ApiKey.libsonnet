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
    Type: 'AWS::ApiGateway::ApiKey',
  },
  setAPIKeyId(APIKeyId): {
    Properties+::: {
      APIKeyId:
        if !std.isString(APIKeyId) then (error 'APIKeyId must be a string')
        else if std.isEmpty(APIKeyId) then (error 'APIKeyId must be not empty')
        else APIKeyId,
    },
  },
  setCustomerId(CustomerId): {
    Properties+::: {
      CustomerId:
        if !std.isString(CustomerId) then (error 'CustomerId must be a string')
        else if std.isEmpty(CustomerId) then (error 'CustomerId must be not empty')
        else CustomerId,
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
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setGenerateDistinctId(GenerateDistinctId): {
    Properties+::: {
      GenerateDistinctId:
        if !std.isBoolean(GenerateDistinctId) then (error 'GenerateDistinctId must be a boolean') else GenerateDistinctId,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setStageKeys(StageKeys): {
    Properties+::: {
      StageKeys:
        if !std.isArray(StageKeys) then (error 'StageKeys must be an array')
        else StageKeys,
    },
  },
  setStageKeysMixin(StageKeys): {
    Properties+::: {
      StageKeys+: StageKeys,
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
  setValue(Value): {
    Properties+::: {
      Value:
        if !std.isString(Value) then (error 'Value must be a string')
        else if std.isEmpty(Value) then (error 'Value must be not empty')
        else Value,
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
