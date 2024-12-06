{
  new(
    ConfiguredTableIdentifier,
    Name,
    RoleArn,
    MembershipIdentifier,
  ): {
    local base = self,
    Properties: {
      ConfiguredTableIdentifier:
        if !std.isString(ConfiguredTableIdentifier) then (error 'ConfiguredTableIdentifier must be a string')
        else if std.isEmpty(ConfiguredTableIdentifier) then (error 'ConfiguredTableIdentifier must be not empty')
        else if std.length(ConfiguredTableIdentifier) < 36 then error ('ConfiguredTableIdentifier should have at least 36 characters')
        else if std.length(ConfiguredTableIdentifier) > 36 then error ('ConfiguredTableIdentifier should have not more than 36 characters')
        else ConfiguredTableIdentifier,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 32 then error ('RoleArn should have at least 32 characters')
        else if std.length(RoleArn) > 512 then error ('RoleArn should have not more than 512 characters')
        else RoleArn,
      MembershipIdentifier:
        if !std.isString(MembershipIdentifier) then (error 'MembershipIdentifier must be a string')
        else if std.isEmpty(MembershipIdentifier) then (error 'MembershipIdentifier must be not empty')
        else if std.length(MembershipIdentifier) < 36 then error ('MembershipIdentifier should have at least 36 characters')
        else if std.length(MembershipIdentifier) > 36 then error ('MembershipIdentifier should have not more than 36 characters')
        else MembershipIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::ConfiguredTableAssociation',
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
  setConfiguredTableAssociationIdentifier(ConfiguredTableAssociationIdentifier): {
    Properties+::: {
      ConfiguredTableAssociationIdentifier:
        if !std.isString(ConfiguredTableAssociationIdentifier) then (error 'ConfiguredTableAssociationIdentifier must be a string')
        else if std.isEmpty(ConfiguredTableAssociationIdentifier) then (error 'ConfiguredTableAssociationIdentifier must be not empty')
        else if std.length(ConfiguredTableAssociationIdentifier) < 36 then error ('ConfiguredTableAssociationIdentifier should have at least 36 characters')
        else if std.length(ConfiguredTableAssociationIdentifier) > 36 then error ('ConfiguredTableAssociationIdentifier should have not more than 36 characters')
        else ConfiguredTableAssociationIdentifier,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setConfiguredTableAssociationAnalysisRules(ConfiguredTableAssociationAnalysisRules): {
    Properties+::: {
      ConfiguredTableAssociationAnalysisRules:
        if !std.isArray(ConfiguredTableAssociationAnalysisRules) then (error 'ConfiguredTableAssociationAnalysisRules must be an array')
        else if std.length(ConfiguredTableAssociationAnalysisRules) < 1 then error ('ConfiguredTableAssociationAnalysisRules cannot have less than 1 items')
        else if std.length(ConfiguredTableAssociationAnalysisRules) > 1 then error ('ConfiguredTableAssociationAnalysisRules cannot have more than 1 items')
        else ConfiguredTableAssociationAnalysisRules,
    },
  },
  pushConfiguredTableAssociationAnalysisRules(ConfiguredTableAssociationAnalysisRules): {
    Properties+::: {
      ConfiguredTableAssociationAnalysisRules+: ConfiguredTableAssociationAnalysisRules,
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
