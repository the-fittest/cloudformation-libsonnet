{
  new(
    Name,
    ResourceArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      ResourceArn:
        if !std.isString(ResourceArn) then (error 'ResourceArn must be a string')
        else if std.isEmpty(ResourceArn) then (error 'ResourceArn must be not empty')
        else if std.length(ResourceArn) < 1 then error ('ResourceArn should have at least 1 characters')
        else if std.length(ResourceArn) > 2048 then error ('ResourceArn should have not more than 2048 characters')
        else ResourceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Shield::Protection',
  },
  setProtectionId(ProtectionId): {
    Properties+::: {
      ProtectionId:
        if !std.isString(ProtectionId) then (error 'ProtectionId must be a string')
        else if std.isEmpty(ProtectionId) then (error 'ProtectionId must be not empty')
        else ProtectionId,
    },
  },
  setProtectionArn(ProtectionArn): {
    Properties+::: {
      ProtectionArn:
        if !std.isString(ProtectionArn) then (error 'ProtectionArn must be a string')
        else if std.isEmpty(ProtectionArn) then (error 'ProtectionArn must be not empty')
        else ProtectionArn,
    },
  },
  setHealthCheckArns(HealthCheckArns): {
    Properties+::: {
      HealthCheckArns:
        if !std.isArray(HealthCheckArns) then (error 'HealthCheckArns must be an array')
        else if std.length(HealthCheckArns) > 1 then error ('HealthCheckArns cannot have more than 1 items')
        else HealthCheckArns,
    },
  },
  setHealthCheckArnsMixin(HealthCheckArns): {
    Properties+::: {
      HealthCheckArns+: HealthCheckArns,
    },
  },
  setApplicationLayerAutomaticResponseConfiguration(ApplicationLayerAutomaticResponseConfiguration): {
    Properties+::: {
      ApplicationLayerAutomaticResponseConfiguration:
        if !std.isObject(ApplicationLayerAutomaticResponseConfiguration) then (error 'ApplicationLayerAutomaticResponseConfiguration must be an object')
        else if !std.objectHas(ApplicationLayerAutomaticResponseConfiguration, 'Action') then (error ' have attribute Action')
        else if !std.objectHas(ApplicationLayerAutomaticResponseConfiguration, 'Status') then (error ' have attribute Status')
        else ApplicationLayerAutomaticResponseConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
