{
  new(
    Name,
    Type,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::QuickSight::DataSource',
  },
  withAlternateDataSourceParameters(AlternateDataSourceParameters): {
    Properties+::: {
      AlternateDataSourceParameters: (if std.isArray(AlternateDataSourceParameters) then AlternateDataSourceParameters else [AlternateDataSourceParameters]),
    },
  },
  withAlternateDataSourceParametersMixin(AlternateDataSourceParameters): {
    Properties+::: {
      AlternateDataSourceParameters+: (if std.isArray(AlternateDataSourceParameters) then AlternateDataSourceParameters else [AlternateDataSourceParameters]),
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAwsAccountId(AwsAccountId): {
    assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
    Properties+::: {
      AwsAccountId: AwsAccountId,
    },
  },
  withCreatedTime(CreatedTime): {
    assert std.isString(CreatedTime) : 'CreatedTime must be a string',
    Properties+::: {
      CreatedTime: CreatedTime,
    },
  },
  withCredentials(Credentials): {
    assert std.isObject(Credentials) : 'Credentials must be a object',
    Properties+::: {
      Credentials: Credentials,
    },
  },
  withDataSourceId(DataSourceId): {
    assert std.isString(DataSourceId) : 'DataSourceId must be a string',
    Properties+::: {
      DataSourceId: DataSourceId,
    },
  },
  withDataSourceParameters(DataSourceParameters): {
    assert std.isObject(DataSourceParameters) : 'DataSourceParameters must be a object',
    Properties+::: {
      DataSourceParameters: DataSourceParameters,
    },
  },
  withErrorInfo(ErrorInfo): {
    assert std.isObject(ErrorInfo) : 'ErrorInfo must be a object',
    Properties+::: {
      ErrorInfo: ErrorInfo,
    },
  },
  withFolderArns(FolderArns): {
    Properties+::: {
      FolderArns: (if std.isArray(FolderArns) then FolderArns else [FolderArns]),
    },
  },
  withFolderArnsMixin(FolderArns): {
    Properties+::: {
      FolderArns+: (if std.isArray(FolderArns) then FolderArns else [FolderArns]),
    },
  },
  withLastUpdatedTime(LastUpdatedTime): {
    assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
    Properties+::: {
      LastUpdatedTime: LastUpdatedTime,
    },
  },
  withPermissions(Permissions): {
    Properties+::: {
      Permissions: (if std.isArray(Permissions) then Permissions else [Permissions]),
    },
  },
  withPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: (if std.isArray(Permissions) then Permissions else [Permissions]),
    },
  },
  withSslProperties(SslProperties): {
    assert std.isObject(SslProperties) : 'SslProperties must be a object',
    Properties+::: {
      SslProperties: SslProperties,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withVpcConnectionProperties(VpcConnectionProperties): {
    assert std.isObject(VpcConnectionProperties) : 'VpcConnectionProperties must be a object',
    Properties+::: {
      VpcConnectionProperties: VpcConnectionProperties,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
