{
  new(
    TypeName,
    ApiId,
    FieldName,
  ): {
    local base = self,
    Properties: {
      TypeName:
        if !std.isString(TypeName) then (error 'TypeName must be a string')
        else if std.isEmpty(TypeName) then (error 'TypeName must be not empty')
        else TypeName,
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      FieldName:
        if !std.isString(FieldName) then (error 'FieldName must be a string')
        else if std.isEmpty(FieldName) then (error 'FieldName must be not empty')
        else FieldName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::Resolver',
  },
  setCachingConfig(CachingConfig): {
    Properties+::: {
      CachingConfig:
        if !std.isObject(CachingConfig) then (error 'CachingConfig must be an object')
        else if !std.objectHas(CachingConfig, 'Ttl') then (error ' have attribute Ttl')
        else CachingConfig,
    },
  },
  setCode(Code): {
    Properties+::: {
      Code:
        if !std.isString(Code) then (error 'Code must be a string')
        else if std.isEmpty(Code) then (error 'Code must be not empty')
        else Code,
    },
  },
  setCodeS3Location(CodeS3Location): {
    Properties+::: {
      CodeS3Location:
        if !std.isString(CodeS3Location) then (error 'CodeS3Location must be a string')
        else if std.isEmpty(CodeS3Location) then (error 'CodeS3Location must be not empty')
        else CodeS3Location,
    },
  },
  setDataSourceName(DataSourceName): {
    Properties+::: {
      DataSourceName:
        if !std.isString(DataSourceName) then (error 'DataSourceName must be a string')
        else if std.isEmpty(DataSourceName) then (error 'DataSourceName must be not empty')
        else DataSourceName,
    },
  },
  setKind(Kind): {
    Properties+::: {
      Kind:
        if !std.isString(Kind) then (error 'Kind must be a string')
        else if std.isEmpty(Kind) then (error 'Kind must be not empty')
        else Kind,
    },
  },
  setMaxBatchSize(MaxBatchSize): {
    Properties+::: {
      MaxBatchSize:
        if !std.isNumber(MaxBatchSize) then (error 'MaxBatchSize must be an number')
        else MaxBatchSize,
    },
  },
  setPipelineConfig(PipelineConfig): {
    Properties+::: {
      PipelineConfig:
        if !std.isObject(PipelineConfig) then (error 'PipelineConfig must be an object')
        else PipelineConfig,
    },
  },
  setRequestMappingTemplate(RequestMappingTemplate): {
    Properties+::: {
      RequestMappingTemplate:
        if !std.isString(RequestMappingTemplate) then (error 'RequestMappingTemplate must be a string')
        else if std.isEmpty(RequestMappingTemplate) then (error 'RequestMappingTemplate must be not empty')
        else RequestMappingTemplate,
    },
  },
  setRequestMappingTemplateS3Location(RequestMappingTemplateS3Location): {
    Properties+::: {
      RequestMappingTemplateS3Location:
        if !std.isString(RequestMappingTemplateS3Location) then (error 'RequestMappingTemplateS3Location must be a string')
        else if std.isEmpty(RequestMappingTemplateS3Location) then (error 'RequestMappingTemplateS3Location must be not empty')
        else RequestMappingTemplateS3Location,
    },
  },
  setResolverArn(ResolverArn): {
    Properties+::: {
      ResolverArn:
        if !std.isString(ResolverArn) then (error 'ResolverArn must be a string')
        else if std.isEmpty(ResolverArn) then (error 'ResolverArn must be not empty')
        else ResolverArn,
    },
  },
  setResponseMappingTemplate(ResponseMappingTemplate): {
    Properties+::: {
      ResponseMappingTemplate:
        if !std.isString(ResponseMappingTemplate) then (error 'ResponseMappingTemplate must be a string')
        else if std.isEmpty(ResponseMappingTemplate) then (error 'ResponseMappingTemplate must be not empty')
        else ResponseMappingTemplate,
    },
  },
  setResponseMappingTemplateS3Location(ResponseMappingTemplateS3Location): {
    Properties+::: {
      ResponseMappingTemplateS3Location:
        if !std.isString(ResponseMappingTemplateS3Location) then (error 'ResponseMappingTemplateS3Location must be a string')
        else if std.isEmpty(ResponseMappingTemplateS3Location) then (error 'ResponseMappingTemplateS3Location must be not empty')
        else ResponseMappingTemplateS3Location,
    },
  },
  setRuntime(Runtime): {
    Properties+::: {
      Runtime:
        if !std.isObject(Runtime) then (error 'Runtime must be an object')
        else if !std.objectHas(Runtime, 'RuntimeVersion') then (error ' have attribute RuntimeVersion')
        else if !std.objectHas(Runtime, 'Name') then (error ' have attribute Name')
        else Runtime,
    },
  },
  setSyncConfig(SyncConfig): {
    Properties+::: {
      SyncConfig:
        if !std.isObject(SyncConfig) then (error 'SyncConfig must be an object')
        else if !std.objectHas(SyncConfig, 'ConflictDetection') then (error ' have attribute ConflictDetection')
        else SyncConfig,
    },
  },
  setMetricsConfig(MetricsConfig): {
    Properties+::: {
      MetricsConfig:
        if !std.isString(MetricsConfig) then (error 'MetricsConfig must be a string')
        else if std.isEmpty(MetricsConfig) then (error 'MetricsConfig must be not empty')
        else if MetricsConfig != 'ENABLED' && MetricsConfig != 'DISABLED' then (error "MetricsConfig should be 'ENABLED' or 'DISABLED'")
        else MetricsConfig,
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
