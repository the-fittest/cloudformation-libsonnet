{
  new(
    DefaultAction,
    Scope,
    VisibilityConfig,
  ): {
    local base = self,
    Properties: {
      DefaultAction:
        if !std.isObject(DefaultAction) then (error 'DefaultAction must be an object')
        else DefaultAction,
      Scope:
        if !std.isString(Scope) then (error 'Scope must be a string')
        else if std.isEmpty(Scope) then (error 'Scope must be not empty')
        else if Scope != 'CLOUDFRONT' && Scope != 'REGIONAL' then (error "Scope should be 'CLOUDFRONT' or 'REGIONAL'")
        else Scope,
      VisibilityConfig:
        if !std.isObject(VisibilityConfig) then (error 'VisibilityConfig must be an object')
        else if !std.objectHas(VisibilityConfig, 'SampledRequestsEnabled') then (error ' have attribute SampledRequestsEnabled')
        else if !std.objectHas(VisibilityConfig, 'CloudWatchMetricsEnabled') then (error ' have attribute CloudWatchMetricsEnabled')
        else if !std.objectHas(VisibilityConfig, 'MetricName') then (error ' have attribute MetricName')
        else VisibilityConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WAFv2::WebACL',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setCapacity(Capacity): {
    Properties+::: {
      Capacity:
        if !std.isNumber(Capacity) then (error 'Capacity must be an number')
        else Capacity,
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
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
  setRules(Rules): {
    Properties+::: {
      Rules:
        if !std.isArray(Rules) then (error 'Rules must be an array')
        else Rules,
    },
  },
  pushRules(Rules): {
    Properties+::: {
      Rules+: Rules,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setLabelNamespace(LabelNamespace): {
    Properties+::: {
      LabelNamespace:
        if !std.isString(LabelNamespace) then (error 'LabelNamespace must be a string')
        else if std.isEmpty(LabelNamespace) then (error 'LabelNamespace must be not empty')
        else LabelNamespace,
    },
  },
  setCustomResponseBodies(CustomResponseBodies): {
    Properties+::: {
      CustomResponseBodies:
        if !std.isObject(CustomResponseBodies) then (error 'CustomResponseBodies must be an object')
        else CustomResponseBodies,
    },
  },
  setCaptchaConfig(CaptchaConfig): {
    Properties+::: {
      CaptchaConfig:
        if !std.isObject(CaptchaConfig) then (error 'CaptchaConfig must be an object')
        else CaptchaConfig,
    },
  },
  setChallengeConfig(ChallengeConfig): {
    Properties+::: {
      ChallengeConfig:
        if !std.isObject(ChallengeConfig) then (error 'ChallengeConfig must be an object')
        else ChallengeConfig,
    },
  },
  setTokenDomains(TokenDomains): {
    Properties+::: {
      TokenDomains:
        if !std.isArray(TokenDomains) then (error 'TokenDomains must be an array')
        else TokenDomains,
    },
  },
  pushTokenDomains(TokenDomains): {
    Properties+::: {
      TokenDomains+: TokenDomains,
    },
  },
  setAssociationConfig(AssociationConfig): {
    Properties+::: {
      AssociationConfig:
        if !std.isObject(AssociationConfig) then (error 'AssociationConfig must be an object')
        else AssociationConfig,
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
