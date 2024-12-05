{
  new(
    DirectoryId,
  ): {
    local base = self,
    Properties: {
      DirectoryId:
        if !std.isString(DirectoryId) then (error 'DirectoryId must be a string')
        else if std.isEmpty(DirectoryId) then (error 'DirectoryId must be not empty')
        else DirectoryId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PCAConnectorAD::DirectoryRegistration',
  },
  setDirectoryRegistrationArn(DirectoryRegistrationArn): {
    Properties+::: {
      DirectoryRegistrationArn:
        if !std.isString(DirectoryRegistrationArn) then (error 'DirectoryRegistrationArn must be a string')
        else if std.isEmpty(DirectoryRegistrationArn) then (error 'DirectoryRegistrationArn must be not empty')
        else if std.length(DirectoryRegistrationArn) < 5 then error ('DirectoryRegistrationArn should have at least 5 characters')
        else if std.length(DirectoryRegistrationArn) > 200 then error ('DirectoryRegistrationArn should have not more than 200 characters')
        else DirectoryRegistrationArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
