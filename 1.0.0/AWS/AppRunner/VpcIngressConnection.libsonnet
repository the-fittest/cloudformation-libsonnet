{
  new(
    ServiceArn,
    IngressVpcConfiguration,
  ): {
    local base = self,
    Properties: {
      ServiceArn:
        if !std.isString(ServiceArn) then (error 'ServiceArn must be a string')
        else if std.isEmpty(ServiceArn) then (error 'ServiceArn must be not empty')
        else if std.length(ServiceArn) < 1 then error ('ServiceArn should have at least 1 characters')
        else if std.length(ServiceArn) > 1011 then error ('ServiceArn should have not more than 1011 characters')
        else ServiceArn,
      IngressVpcConfiguration:
        if !std.isObject(IngressVpcConfiguration) then (error 'IngressVpcConfiguration must be an object')
        else if !std.objectHas(IngressVpcConfiguration, 'VpcId') then (error ' have attribute VpcId')
        else if !std.objectHas(IngressVpcConfiguration, 'VpcEndpointId') then (error ' have attribute VpcEndpointId')
        else IngressVpcConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppRunner::VpcIngressConnection',
  },
  setVpcIngressConnectionArn(VpcIngressConnectionArn): {
    Properties+::: {
      VpcIngressConnectionArn:
        if !std.isString(VpcIngressConnectionArn) then (error 'VpcIngressConnectionArn must be a string')
        else if std.isEmpty(VpcIngressConnectionArn) then (error 'VpcIngressConnectionArn must be not empty')
        else if std.length(VpcIngressConnectionArn) < 1 then error ('VpcIngressConnectionArn should have at least 1 characters')
        else if std.length(VpcIngressConnectionArn) > 1011 then error ('VpcIngressConnectionArn should have not more than 1011 characters')
        else VpcIngressConnectionArn,
    },
  },
  setVpcIngressConnectionName(VpcIngressConnectionName): {
    Properties+::: {
      VpcIngressConnectionName:
        if !std.isString(VpcIngressConnectionName) then (error 'VpcIngressConnectionName must be a string')
        else if std.isEmpty(VpcIngressConnectionName) then (error 'VpcIngressConnectionName must be not empty')
        else if std.length(VpcIngressConnectionName) < 4 then error ('VpcIngressConnectionName should have at least 4 characters')
        else if std.length(VpcIngressConnectionName) > 40 then error ('VpcIngressConnectionName should have not more than 40 characters')
        else VpcIngressConnectionName,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'AVAILABLE' && Status != 'PENDING_CREATION' && Status != 'PENDING_UPDATE' && Status != 'PENDING_DELETION' && Status != 'FAILED_CREATION' && Status != 'FAILED_UPDATE' && Status != 'FAILED_DELETION' && Status != 'DELETED' then (error "Status should be 'AVAILABLE' or 'PENDING_CREATION' or 'PENDING_UPDATE' or 'PENDING_DELETION' or 'FAILED_CREATION' or 'FAILED_UPDATE' or 'FAILED_DELETION' or 'DELETED'")
        else Status,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 255 then error ('DomainName should have not more than 255 characters')
        else DomainName,
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
