{
  new(
    ApiId,
    DataSourceName,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
      assert std.isString(DataSourceName) : 'DataSourceName must be a string',
      DataSourceName: DataSourceName,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::FunctionConfiguration',
  },
  withFunctionId(FunctionId): {
    assert std.isString(FunctionId) : 'FunctionId must be a string',
    Properties+::: {
      FunctionId: FunctionId,
    },
  },
  withFunctionArn(FunctionArn): {
    assert std.isString(FunctionArn) : 'FunctionArn must be a string',
    Properties+::: {
      FunctionArn: FunctionArn,
    },
  },
  withCode(Code): {
    assert std.isString(Code) : 'Code must be a string',
    Properties+::: {
      Code: Code,
    },
  },
  withCodeS3Location(CodeS3Location): {
    assert std.isString(CodeS3Location) : 'CodeS3Location must be a string',
    Properties+::: {
      CodeS3Location: CodeS3Location,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withFunctionVersion(FunctionVersion): {
    assert std.isString(FunctionVersion) : 'FunctionVersion must be a string',
    Properties+::: {
      FunctionVersion: FunctionVersion,
    },
  },
  withMaxBatchSize(MaxBatchSize): {
    assert std.isNumber(MaxBatchSize) : 'MaxBatchSize must be a number',
    Properties+::: {
      MaxBatchSize: MaxBatchSize,
    },
  },
  withRequestMappingTemplate(RequestMappingTemplate): {
    assert std.isString(RequestMappingTemplate) : 'RequestMappingTemplate must be a string',
    Properties+::: {
      RequestMappingTemplate: RequestMappingTemplate,
    },
  },
  withRequestMappingTemplateS3Location(RequestMappingTemplateS3Location): {
    assert std.isString(RequestMappingTemplateS3Location) : 'RequestMappingTemplateS3Location must be a string',
    Properties+::: {
      RequestMappingTemplateS3Location: RequestMappingTemplateS3Location,
    },
  },
  withResponseMappingTemplate(ResponseMappingTemplate): {
    assert std.isString(ResponseMappingTemplate) : 'ResponseMappingTemplate must be a string',
    Properties+::: {
      ResponseMappingTemplate: ResponseMappingTemplate,
    },
  },
  withResponseMappingTemplateS3Location(ResponseMappingTemplateS3Location): {
    assert std.isString(ResponseMappingTemplateS3Location) : 'ResponseMappingTemplateS3Location must be a string',
    Properties+::: {
      ResponseMappingTemplateS3Location: ResponseMappingTemplateS3Location,
    },
  },
  withRuntime(Runtime): {
    assert std.isObject(Runtime) : 'Runtime must be a object',
    Properties+::: {
      Runtime: Runtime,
    },
  },
  withSyncConfig(SyncConfig): {
    assert std.isObject(SyncConfig) : 'SyncConfig must be a object',
    Properties+::: {
      SyncConfig: SyncConfig,
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
