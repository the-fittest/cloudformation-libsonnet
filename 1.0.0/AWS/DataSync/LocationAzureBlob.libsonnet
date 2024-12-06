{
  new(
    AzureBlobAuthenticationType,
    AgentArns,
  ): {
    local base = self,
    Properties: {
      AzureBlobAuthenticationType:
        if !std.isString(AzureBlobAuthenticationType) then (error 'AzureBlobAuthenticationType must be a string')
        else if std.isEmpty(AzureBlobAuthenticationType) then (error 'AzureBlobAuthenticationType must be not empty')
        else if AzureBlobAuthenticationType != 'SAS' then (error "AzureBlobAuthenticationType should be 'SAS'")
        else AzureBlobAuthenticationType,
      AgentArns:
        if !std.isArray(AgentArns) then (error 'AgentArns must be an array')
        else if std.length(AgentArns) < 1 then error ('AgentArns cannot have less than 1 items')
        else if std.length(AgentArns) > 4 then error ('AgentArns cannot have more than 4 items')
        else AgentArns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationAzureBlob',
  },
  setAzureBlobSasConfiguration(AzureBlobSasConfiguration): {
    Properties+::: {
      AzureBlobSasConfiguration:
        if !std.isObject(AzureBlobSasConfiguration) then (error 'AzureBlobSasConfiguration must be an object')
        else if !std.objectHas(AzureBlobSasConfiguration, 'AzureBlobSasToken') then (error ' have attribute AzureBlobSasToken')
        else AzureBlobSasConfiguration,
    },
  },
  setAzureBlobContainerUrl(AzureBlobContainerUrl): {
    Properties+::: {
      AzureBlobContainerUrl:
        if !std.isString(AzureBlobContainerUrl) then (error 'AzureBlobContainerUrl must be a string')
        else if std.isEmpty(AzureBlobContainerUrl) then (error 'AzureBlobContainerUrl must be not empty')
        else if std.length(AzureBlobContainerUrl) > 325 then error ('AzureBlobContainerUrl should have not more than 325 characters')
        else AzureBlobContainerUrl,
    },
  },
  setAzureBlobType(AzureBlobType): {
    Properties+::: {
      AzureBlobType:
        if !std.isString(AzureBlobType) then (error 'AzureBlobType must be a string')
        else if std.isEmpty(AzureBlobType) then (error 'AzureBlobType must be not empty')
        else if AzureBlobType != 'BLOCK' then (error "AzureBlobType should be 'BLOCK'")
        else AzureBlobType,
    },
  },
  setAzureAccessTier(AzureAccessTier): {
    Properties+::: {
      AzureAccessTier:
        if !std.isString(AzureAccessTier) then (error 'AzureAccessTier must be a string')
        else if std.isEmpty(AzureAccessTier) then (error 'AzureAccessTier must be not empty')
        else if AzureAccessTier != 'HOT' && AzureAccessTier != 'COOL' && AzureAccessTier != 'ARCHIVE' then (error "AzureAccessTier should be 'HOT' or 'COOL' or 'ARCHIVE'")
        else AzureAccessTier,
    },
  },
  setSubdirectory(Subdirectory): {
    Properties+::: {
      Subdirectory:
        if !std.isString(Subdirectory) then (error 'Subdirectory must be a string')
        else if std.isEmpty(Subdirectory) then (error 'Subdirectory must be not empty')
        else if std.length(Subdirectory) > 1024 then error ('Subdirectory should have not more than 1024 characters')
        else Subdirectory,
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setLocationArn(LocationArn): {
    Properties+::: {
      LocationArn:
        if !std.isString(LocationArn) then (error 'LocationArn must be a string')
        else if std.isEmpty(LocationArn) then (error 'LocationArn must be not empty')
        else if std.length(LocationArn) > 128 then error ('LocationArn should have not more than 128 characters')
        else LocationArn,
    },
  },
  setLocationUri(LocationUri): {
    Properties+::: {
      LocationUri:
        if !std.isString(LocationUri) then (error 'LocationUri must be a string')
        else if std.isEmpty(LocationUri) then (error 'LocationUri must be not empty')
        else if std.length(LocationUri) > 4356 then error ('LocationUri should have not more than 4356 characters')
        else LocationUri,
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
