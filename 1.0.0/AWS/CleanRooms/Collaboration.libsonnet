{
  new(
    CreatorDisplayName,
    CreatorMemberAbilities,
    Members,
    Name,
    Description,
    QueryLogStatus,
  ): {
    local base = self,
    Properties: {
      CreatorDisplayName:
        if !std.isString(CreatorDisplayName) then (error 'CreatorDisplayName must be a string')
        else if std.isEmpty(CreatorDisplayName) then (error 'CreatorDisplayName must be not empty')
        else if std.length(CreatorDisplayName) < 1 then error ('CreatorDisplayName should have at least 1 characters')
        else if std.length(CreatorDisplayName) > 100 then error ('CreatorDisplayName should have not more than 100 characters')
        else CreatorDisplayName,
      CreatorMemberAbilities:
        if !std.isArray(CreatorMemberAbilities) then (error 'CreatorMemberAbilities must be an array')
        else CreatorMemberAbilities,
      Members:
        if !std.isArray(Members) then (error 'Members must be an array')
        else if std.length(Members) > 9 then error ('Members cannot have more than 9 items')
        else Members,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
      QueryLogStatus:
        if !std.isString(QueryLogStatus) then (error 'QueryLogStatus must be a string')
        else if std.isEmpty(QueryLogStatus) then (error 'QueryLogStatus must be not empty')
        else if QueryLogStatus != 'ENABLED' && QueryLogStatus != 'DISABLED' then (error "QueryLogStatus should be 'ENABLED' or 'DISABLED'")
        else QueryLogStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::Collaboration',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 100 then error ('Arn should have not more than 100 characters')
        else Arn,
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
  setCollaborationIdentifier(CollaborationIdentifier): {
    Properties+::: {
      CollaborationIdentifier:
        if !std.isString(CollaborationIdentifier) then (error 'CollaborationIdentifier must be a string')
        else if std.isEmpty(CollaborationIdentifier) then (error 'CollaborationIdentifier must be not empty')
        else if std.length(CollaborationIdentifier) < 36 then error ('CollaborationIdentifier should have at least 36 characters')
        else if std.length(CollaborationIdentifier) > 36 then error ('CollaborationIdentifier should have not more than 36 characters')
        else CollaborationIdentifier,
    },
  },
  setDataEncryptionMetadata(DataEncryptionMetadata): {
    Properties+::: {
      DataEncryptionMetadata:
        if !std.isObject(DataEncryptionMetadata) then (error 'DataEncryptionMetadata must be an object')
        else if !std.objectHas(DataEncryptionMetadata, 'AllowCleartext') then (error ' have attribute AllowCleartext')
        else if !std.objectHas(DataEncryptionMetadata, 'AllowDuplicates') then (error ' have attribute AllowDuplicates')
        else if !std.objectHas(DataEncryptionMetadata, 'AllowJoinsOnColumnsWithDifferentNames') then (error ' have attribute AllowJoinsOnColumnsWithDifferentNames')
        else if !std.objectHas(DataEncryptionMetadata, 'PreserveNulls') then (error ' have attribute PreserveNulls')
        else DataEncryptionMetadata,
    },
  },
  setAnalyticsEngine(AnalyticsEngine): {
    Properties+::: {
      AnalyticsEngine:
        if !std.isString(AnalyticsEngine) then (error 'AnalyticsEngine must be a string')
        else if std.isEmpty(AnalyticsEngine) then (error 'AnalyticsEngine must be not empty')
        else if AnalyticsEngine != 'CLEAN_ROOMS_SQL' && AnalyticsEngine != 'SPARK' then (error "AnalyticsEngine should be 'CLEAN_ROOMS_SQL' or 'SPARK'")
        else AnalyticsEngine,
    },
  },
  setCreatorPaymentConfiguration(CreatorPaymentConfiguration): {
    Properties+::: {
      CreatorPaymentConfiguration:
        if !std.isObject(CreatorPaymentConfiguration) then (error 'CreatorPaymentConfiguration must be an object')
        else if !std.objectHas(CreatorPaymentConfiguration, 'QueryCompute') then (error ' have attribute QueryCompute')
        else CreatorPaymentConfiguration,
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
