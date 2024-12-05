{
  new(
    Users,
  ): {
    local base = self,
    Properties: {
      Users:
        if !std.isArray(Users) then (error 'Users must be an array')
        else Users,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IAM::VirtualMFADevice',
  },
  setVirtualMfaDeviceName(VirtualMfaDeviceName): {
    Properties+::: {
      VirtualMfaDeviceName:
        if !std.isString(VirtualMfaDeviceName) then (error 'VirtualMfaDeviceName must be a string')
        else if std.isEmpty(VirtualMfaDeviceName) then (error 'VirtualMfaDeviceName must be not empty')
        else if std.length(VirtualMfaDeviceName) < 1 then error ('VirtualMfaDeviceName should have at least 1 characters')
        else if std.length(VirtualMfaDeviceName) > 226 then error ('VirtualMfaDeviceName should have not more than 226 characters')
        else VirtualMfaDeviceName,
    },
  },
  setPath(Path): {
    Properties+::: {
      Path:
        if !std.isString(Path) then (error 'Path must be a string')
        else if std.isEmpty(Path) then (error 'Path must be not empty')
        else if std.length(Path) < 1 then error ('Path should have at least 1 characters')
        else if std.length(Path) > 512 then error ('Path should have not more than 512 characters')
        else Path,
    },
  },
  setSerialNumber(SerialNumber): {
    Properties+::: {
      SerialNumber:
        if !std.isString(SerialNumber) then (error 'SerialNumber must be a string')
        else if std.isEmpty(SerialNumber) then (error 'SerialNumber must be not empty')
        else if std.length(SerialNumber) < 9 then error ('SerialNumber should have at least 9 characters')
        else if std.length(SerialNumber) > 256 then error ('SerialNumber should have not more than 256 characters')
        else SerialNumber,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
