{
  new(
    TLSInspectionConfigurationName,
    TLSInspectionConfiguration,
  ): {
    local base = self,
    Properties: {
      TLSInspectionConfigurationName:
        if !std.isString(TLSInspectionConfigurationName) then (error 'TLSInspectionConfigurationName must be a string')
        else if std.isEmpty(TLSInspectionConfigurationName) then (error 'TLSInspectionConfigurationName must be not empty')
        else if std.length(TLSInspectionConfigurationName) < 1 then error ('TLSInspectionConfigurationName should have at least 1 characters')
        else if std.length(TLSInspectionConfigurationName) > 128 then error ('TLSInspectionConfigurationName should have not more than 128 characters')
        else TLSInspectionConfigurationName,
      TLSInspectionConfiguration:
        if !std.isObject(TLSInspectionConfiguration) then (error 'TLSInspectionConfiguration must be an object')
        else TLSInspectionConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkFirewall::TLSInspectionConfiguration',
  },
  setTLSInspectionConfigurationArn(TLSInspectionConfigurationArn): {
    Properties+::: {
      TLSInspectionConfigurationArn:
        if !std.isString(TLSInspectionConfigurationArn) then (error 'TLSInspectionConfigurationArn must be a string')
        else if std.isEmpty(TLSInspectionConfigurationArn) then (error 'TLSInspectionConfigurationArn must be not empty')
        else if std.length(TLSInspectionConfigurationArn) < 1 then error ('TLSInspectionConfigurationArn should have at least 1 characters')
        else if std.length(TLSInspectionConfigurationArn) > 256 then error ('TLSInspectionConfigurationArn should have not more than 256 characters')
        else TLSInspectionConfigurationArn,
    },
  },
  setTLSInspectionConfigurationId(TLSInspectionConfigurationId): {
    Properties+::: {
      TLSInspectionConfigurationId:
        if !std.isString(TLSInspectionConfigurationId) then (error 'TLSInspectionConfigurationId must be a string')
        else if std.isEmpty(TLSInspectionConfigurationId) then (error 'TLSInspectionConfigurationId must be not empty')
        else if std.length(TLSInspectionConfigurationId) < 36 then error ('TLSInspectionConfigurationId should have at least 36 characters')
        else if std.length(TLSInspectionConfigurationId) > 36 then error ('TLSInspectionConfigurationId should have not more than 36 characters')
        else TLSInspectionConfigurationId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
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
