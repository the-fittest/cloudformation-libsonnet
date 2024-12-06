{
  new(
    EnvironmentIdentifier,
    VpcId,
    Name,
    ProxyType,
  ): {
    local base = self,
    Properties: {
      EnvironmentIdentifier:
        if !std.isString(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be a string')
        else if std.isEmpty(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be not empty')
        else if std.length(EnvironmentIdentifier) < 14 then error ('EnvironmentIdentifier should have at least 14 characters')
        else if std.length(EnvironmentIdentifier) > 14 then error ('EnvironmentIdentifier should have not more than 14 characters')
        else EnvironmentIdentifier,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) < 12 then error ('VpcId should have at least 12 characters')
        else if std.length(VpcId) > 21 then error ('VpcId should have not more than 21 characters')
        else VpcId,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 63 then error ('Name should have not more than 63 characters')
        else Name,
      ProxyType:
        if !std.isString(ProxyType) then (error 'ProxyType must be a string')
        else if std.isEmpty(ProxyType) then (error 'ProxyType must be not empty')
        else if ProxyType != 'API_GATEWAY' then (error "ProxyType should be 'API_GATEWAY'")
        else ProxyType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RefactorSpaces::Application',
  },
  setApiGatewayProxy(ApiGatewayProxy): {
    Properties+::: {
      ApiGatewayProxy:
        if !std.isObject(ApiGatewayProxy) then (error 'ApiGatewayProxy must be an object')
        else ApiGatewayProxy,
    },
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
  setApiGatewayId(ApiGatewayId): {
    Properties+::: {
      ApiGatewayId:
        if !std.isString(ApiGatewayId) then (error 'ApiGatewayId must be a string')
        else if std.isEmpty(ApiGatewayId) then (error 'ApiGatewayId must be not empty')
        else if std.length(ApiGatewayId) < 10 then error ('ApiGatewayId should have at least 10 characters')
        else if std.length(ApiGatewayId) > 10 then error ('ApiGatewayId should have not more than 10 characters')
        else ApiGatewayId,
    },
  },
  setVpcLinkId(VpcLinkId): {
    Properties+::: {
      VpcLinkId:
        if !std.isString(VpcLinkId) then (error 'VpcLinkId must be a string')
        else if std.isEmpty(VpcLinkId) then (error 'VpcLinkId must be not empty')
        else if std.length(VpcLinkId) < 10 then error ('VpcLinkId should have at least 10 characters')
        else if std.length(VpcLinkId) > 10 then error ('VpcLinkId should have not more than 10 characters')
        else VpcLinkId,
    },
  },
  setNlbArn(NlbArn): {
    Properties+::: {
      NlbArn:
        if !std.isString(NlbArn) then (error 'NlbArn must be a string')
        else if std.isEmpty(NlbArn) then (error 'NlbArn must be not empty')
        else if std.length(NlbArn) < 20 then error ('NlbArn should have at least 20 characters')
        else if std.length(NlbArn) > 2048 then error ('NlbArn should have not more than 2048 characters')
        else NlbArn,
    },
  },
  setNlbName(NlbName): {
    Properties+::: {
      NlbName:
        if !std.isString(NlbName) then (error 'NlbName must be a string')
        else if std.isEmpty(NlbName) then (error 'NlbName must be not empty')
        else if std.length(NlbName) < 1 then error ('NlbName should have at least 1 characters')
        else if std.length(NlbName) > 32 then error ('NlbName should have not more than 32 characters')
        else NlbName,
    },
  },
  setApplicationIdentifier(ApplicationIdentifier): {
    Properties+::: {
      ApplicationIdentifier:
        if !std.isString(ApplicationIdentifier) then (error 'ApplicationIdentifier must be a string')
        else if std.isEmpty(ApplicationIdentifier) then (error 'ApplicationIdentifier must be not empty')
        else if std.length(ApplicationIdentifier) < 14 then error ('ApplicationIdentifier should have at least 14 characters')
        else if std.length(ApplicationIdentifier) > 14 then error ('ApplicationIdentifier should have not more than 14 characters')
        else ApplicationIdentifier,
    },
  },
  setStageName(StageName): {
    Properties+::: {
      StageName:
        if !std.isString(StageName) then (error 'StageName must be a string')
        else if std.isEmpty(StageName) then (error 'StageName must be not empty')
        else if std.length(StageName) < 1 then error ('StageName should have at least 1 characters')
        else if std.length(StageName) > 128 then error ('StageName should have not more than 128 characters')
        else StageName,
    },
  },
  setProxyUrl(ProxyUrl): {
    Properties+::: {
      ProxyUrl:
        if !std.isString(ProxyUrl) then (error 'ProxyUrl must be a string')
        else if std.isEmpty(ProxyUrl) then (error 'ProxyUrl must be not empty')
        else if std.length(ProxyUrl) < 1 then error ('ProxyUrl should have at least 1 characters')
        else if std.length(ProxyUrl) > 2048 then error ('ProxyUrl should have not more than 2048 characters')
        else ProxyUrl,
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
