{
  new(
    Name,
    RoleArns,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      RoleArns:
        if !std.isArray(RoleArns) then (error 'RoleArns must be an array')
        else RoleArns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RolesAnywhere::Profile',
  },
  setDurationSeconds(DurationSeconds): {
    Properties+::: {
      DurationSeconds:
        if !std.isNumber(DurationSeconds) then (error 'DurationSeconds must be an number')
        else if DurationSeconds < 900 then error ('DurationSeconds should be at least 900')
        else if DurationSeconds > 43200 then error ('DurationSeconds should be not more than 43200')
        else DurationSeconds,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setManagedPolicyArns(ManagedPolicyArns): {
    Properties+::: {
      ManagedPolicyArns:
        if !std.isArray(ManagedPolicyArns) then (error 'ManagedPolicyArns must be an array')
        else ManagedPolicyArns,
    },
  },
  setManagedPolicyArnsMixin(ManagedPolicyArns): {
    Properties+::: {
      ManagedPolicyArns+: ManagedPolicyArns,
    },
  },
  setProfileArn(ProfileArn): {
    Properties+::: {
      ProfileArn:
        if !std.isString(ProfileArn) then (error 'ProfileArn must be a string')
        else if std.isEmpty(ProfileArn) then (error 'ProfileArn must be not empty')
        else ProfileArn,
    },
  },
  setProfileId(ProfileId): {
    Properties+::: {
      ProfileId:
        if !std.isString(ProfileId) then (error 'ProfileId must be a string')
        else if std.isEmpty(ProfileId) then (error 'ProfileId must be not empty')
        else ProfileId,
    },
  },
  setRequireInstanceProperties(RequireInstanceProperties): {
    Properties+::: {
      RequireInstanceProperties:
        if !std.isBoolean(RequireInstanceProperties) then (error 'RequireInstanceProperties must be a boolean') else RequireInstanceProperties,
    },
  },
  setSessionPolicy(SessionPolicy): {
    Properties+::: {
      SessionPolicy:
        if !std.isString(SessionPolicy) then (error 'SessionPolicy must be a string')
        else if std.isEmpty(SessionPolicy) then (error 'SessionPolicy must be not empty')
        else SessionPolicy,
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
  setAttributeMappings(AttributeMappings): {
    Properties+::: {
      AttributeMappings:
        if !std.isArray(AttributeMappings) then (error 'AttributeMappings must be an array')
        else AttributeMappings,
    },
  },
  setAttributeMappingsMixin(AttributeMappings): {
    Properties+::: {
      AttributeMappings+: AttributeMappings,
    },
  },
  setAcceptRoleSessionName(AcceptRoleSessionName): {
    Properties+::: {
      AcceptRoleSessionName:
        if !std.isBoolean(AcceptRoleSessionName) then (error 'AcceptRoleSessionName must be a boolean') else AcceptRoleSessionName,
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
