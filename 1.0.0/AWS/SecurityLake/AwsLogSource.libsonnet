{
  new(
    DataLakeArn,
    SourceVersion,
    SourceName,
  ): {
    local base = self,
    Properties: {
      DataLakeArn:
        if !std.isString(DataLakeArn) then (error 'DataLakeArn must be a string')
        else if std.isEmpty(DataLakeArn) then (error 'DataLakeArn must be not empty')
        else if std.length(DataLakeArn) < 1 then error ('DataLakeArn should have at least 1 characters')
        else if std.length(DataLakeArn) > 256 then error ('DataLakeArn should have not more than 256 characters')
        else DataLakeArn,
      SourceVersion:
        if !std.isString(SourceVersion) then (error 'SourceVersion must be a string')
        else if std.isEmpty(SourceVersion) then (error 'SourceVersion must be not empty')
        else SourceVersion,
      SourceName:
        if !std.isString(SourceName) then (error 'SourceName must be a string')
        else if std.isEmpty(SourceName) then (error 'SourceName must be not empty')
        else SourceName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityLake::AwsLogSource',
  },
  setAccounts(Accounts): {
    Properties+::: {
      Accounts:
        if !std.isArray(Accounts) then (error 'Accounts must be an array')
        else Accounts,
    },
  },
  setAccountsMixin(Accounts): {
    Properties+::: {
      Accounts+: Accounts,
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
