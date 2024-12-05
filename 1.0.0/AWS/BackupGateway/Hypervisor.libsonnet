{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::BackupGateway::Hypervisor',
  },
  setHost(Host): {
    Properties+::: {
      Host:
        if !std.isString(Host) then (error 'Host must be a string')
        else if std.isEmpty(Host) then (error 'Host must be not empty')
        else if std.length(Host) < 3 then error ('Host should have at least 3 characters')
        else if std.length(Host) > 128 then error ('Host should have not more than 128 characters')
        else Host,
    },
  },
  setHypervisorArn(HypervisorArn): {
    Properties+::: {
      HypervisorArn:
        if !std.isString(HypervisorArn) then (error 'HypervisorArn must be a string')
        else if std.isEmpty(HypervisorArn) then (error 'HypervisorArn must be not empty')
        else if std.length(HypervisorArn) < 50 then error ('HypervisorArn should have at least 50 characters')
        else if std.length(HypervisorArn) > 500 then error ('HypervisorArn should have not more than 500 characters')
        else HypervisorArn,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 50 then error ('KmsKeyArn should have at least 50 characters')
        else if std.length(KmsKeyArn) > 500 then error ('KmsKeyArn should have not more than 500 characters')
        else KmsKeyArn,
    },
  },
  setLogGroupArn(LogGroupArn): {
    Properties+::: {
      LogGroupArn:
        if !std.isString(LogGroupArn) then (error 'LogGroupArn must be a string')
        else if std.isEmpty(LogGroupArn) then (error 'LogGroupArn must be not empty')
        else if std.length(LogGroupArn) > 2048 then error ('LogGroupArn should have not more than 2048 characters')
        else LogGroupArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
    },
  },
  setPassword(Password): {
    Properties+::: {
      Password:
        if !std.isString(Password) then (error 'Password must be a string')
        else if std.isEmpty(Password) then (error 'Password must be not empty')
        else if std.length(Password) < 1 then error ('Password should have at least 1 characters')
        else if std.length(Password) > 100 then error ('Password should have not more than 100 characters')
        else Password,
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
  setUsername(Username): {
    Properties+::: {
      Username:
        if !std.isString(Username) then (error 'Username must be a string')
        else if std.isEmpty(Username) then (error 'Username must be not empty')
        else if std.length(Username) < 1 then error ('Username should have at least 1 characters')
        else if std.length(Username) > 100 then error ('Username should have not more than 100 characters')
        else Username,
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
