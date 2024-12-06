{
  new(
    Name,
    InstanceArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 32 then error ('Name should have not more than 32 characters')
        else Name,
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else if std.length(InstanceArn) < 10 then error ('InstanceArn should have at least 10 characters')
        else if std.length(InstanceArn) > 1224 then error ('InstanceArn should have not more than 1224 characters')
        else InstanceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSO::PermissionSet',
  },
  setPermissionSetArn(PermissionSetArn): {
    Properties+::: {
      PermissionSetArn:
        if !std.isString(PermissionSetArn) then (error 'PermissionSetArn must be a string')
        else if std.isEmpty(PermissionSetArn) then (error 'PermissionSetArn must be not empty')
        else if std.length(PermissionSetArn) < 10 then error ('PermissionSetArn should have at least 10 characters')
        else if std.length(PermissionSetArn) > 1224 then error ('PermissionSetArn should have not more than 1224 characters')
        else PermissionSetArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 700 then error ('Description should have not more than 700 characters')
        else Description,
    },
  },
  setSessionDuration(SessionDuration): {
    Properties+::: {
      SessionDuration:
        if !std.isString(SessionDuration) then (error 'SessionDuration must be a string')
        else if std.isEmpty(SessionDuration) then (error 'SessionDuration must be not empty')
        else if std.length(SessionDuration) < 1 then error ('SessionDuration should have at least 1 characters')
        else if std.length(SessionDuration) > 100 then error ('SessionDuration should have not more than 100 characters')
        else SessionDuration,
    },
  },
  setRelayStateType(RelayStateType): {
    Properties+::: {
      RelayStateType:
        if !std.isString(RelayStateType) then (error 'RelayStateType must be a string')
        else if std.isEmpty(RelayStateType) then (error 'RelayStateType must be not empty')
        else if std.length(RelayStateType) < 1 then error ('RelayStateType should have at least 1 characters')
        else if std.length(RelayStateType) > 240 then error ('RelayStateType should have not more than 240 characters')
        else RelayStateType,
    },
  },
  setManagedPolicies(ManagedPolicies): {
    Properties+::: {
      ManagedPolicies:
        if !std.isArray(ManagedPolicies) then (error 'ManagedPolicies must be an array')
        else if std.length(ManagedPolicies) > 20 then error ('ManagedPolicies cannot have more than 20 items')
        else ManagedPolicies,
    },
  },
  pushManagedPolicies(ManagedPolicies): {
    Properties+::: {
      ManagedPolicies+: ManagedPolicies,
    },
  },
  setInlinePolicy(InlinePolicy): {
    Properties+::: {
      InlinePolicy: InlinePolicy,
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
  setCustomerManagedPolicyReferences(CustomerManagedPolicyReferences): {
    Properties+::: {
      CustomerManagedPolicyReferences:
        if !std.isArray(CustomerManagedPolicyReferences) then (error 'CustomerManagedPolicyReferences must be an array')
        else if std.length(CustomerManagedPolicyReferences) > 20 then error ('CustomerManagedPolicyReferences cannot have more than 20 items')
        else CustomerManagedPolicyReferences,
    },
  },
  pushCustomerManagedPolicyReferences(CustomerManagedPolicyReferences): {
    Properties+::: {
      CustomerManagedPolicyReferences+: CustomerManagedPolicyReferences,
    },
  },
  setPermissionsBoundary(PermissionsBoundary): {
    Properties+::: {
      PermissionsBoundary:
        if !std.isObject(PermissionsBoundary) then (error 'PermissionsBoundary must be an object')
        else PermissionsBoundary,
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
