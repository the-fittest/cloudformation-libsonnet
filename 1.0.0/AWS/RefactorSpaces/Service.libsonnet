{
  new(
    EnvironmentIdentifier,
    ApplicationIdentifier,
    EndpointType,
    Name,
  ): {
    local base = self,
    Properties: {
      EnvironmentIdentifier:
        if !std.isString(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be a string')
        else if std.isEmpty(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be not empty')
        else if std.length(EnvironmentIdentifier) < 14 then error ('EnvironmentIdentifier should have at least 14 characters')
        else if std.length(EnvironmentIdentifier) > 14 then error ('EnvironmentIdentifier should have not more than 14 characters')
        else EnvironmentIdentifier,
      ApplicationIdentifier:
        if !std.isString(ApplicationIdentifier) then (error 'ApplicationIdentifier must be a string')
        else if std.isEmpty(ApplicationIdentifier) then (error 'ApplicationIdentifier must be not empty')
        else if std.length(ApplicationIdentifier) < 14 then error ('ApplicationIdentifier should have at least 14 characters')
        else if std.length(ApplicationIdentifier) > 14 then error ('ApplicationIdentifier should have not more than 14 characters')
        else ApplicationIdentifier,
      EndpointType:
        if !std.isString(EndpointType) then (error 'EndpointType must be a string')
        else if std.isEmpty(EndpointType) then (error 'EndpointType must be not empty')
        else if EndpointType != 'LAMBDA' && EndpointType != 'URL' then (error "EndpointType should be 'LAMBDA' or 'URL'")
        else EndpointType,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 63 then error ('Name should have not more than 63 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RefactorSpaces::Service',
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setLambdaEndpoint(LambdaEndpoint): {
    Properties+::: {
      LambdaEndpoint:
        if !std.isObject(LambdaEndpoint) then (error 'LambdaEndpoint must be an object')
        else if !std.objectHas(LambdaEndpoint, 'Arn') then (error ' have attribute Arn')
        else LambdaEndpoint,
    },
  },
  setServiceIdentifier(ServiceIdentifier): {
    Properties+::: {
      ServiceIdentifier:
        if !std.isString(ServiceIdentifier) then (error 'ServiceIdentifier must be a string')
        else if std.isEmpty(ServiceIdentifier) then (error 'ServiceIdentifier must be not empty')
        else if std.length(ServiceIdentifier) < 14 then error ('ServiceIdentifier should have at least 14 characters')
        else if std.length(ServiceIdentifier) > 14 then error ('ServiceIdentifier should have not more than 14 characters')
        else ServiceIdentifier,
    },
  },
  setUrlEndpoint(UrlEndpoint): {
    Properties+::: {
      UrlEndpoint:
        if !std.isObject(UrlEndpoint) then (error 'UrlEndpoint must be an object')
        else if !std.objectHas(UrlEndpoint, 'Url') then (error ' have attribute Url')
        else UrlEndpoint,
    },
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) < 12 then error ('VpcId should have at least 12 characters')
        else if std.length(VpcId) > 21 then error ('VpcId should have not more than 21 characters')
        else VpcId,
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
