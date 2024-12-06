{
  new(
    ApiId,
    DataSourceName,
    Name,
  ): {
    local base = self,
    Properties: {
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      DataSourceName:
        if !std.isString(DataSourceName) then (error 'DataSourceName must be a string')
        else if std.isEmpty(DataSourceName) then (error 'DataSourceName must be not empty')
        else DataSourceName,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::FunctionConfiguration',
  },
  setFunctionId(FunctionId): {
    Properties+::: {
      FunctionId:
        if !std.isString(FunctionId) then (error 'FunctionId must be a string')
        else if std.isEmpty(FunctionId) then (error 'FunctionId must be not empty')
        else FunctionId,
    },
  },
  setFunctionArn(FunctionArn): {
    Properties+::: {
      FunctionArn:
        if !std.isString(FunctionArn) then (error 'FunctionArn must be a string')
        else if std.isEmpty(FunctionArn) then (error 'FunctionArn must be not empty')
        else FunctionArn,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setFunctionVersion(FunctionVersion): {
    Properties+::: {
      FunctionVersion:
        if !std.isString(FunctionVersion) then (error 'FunctionVersion must be a string')
        else if std.isEmpty(FunctionVersion) then (error 'FunctionVersion must be not empty')
        else FunctionVersion,
    },
  },
  setMaxBatchSize(MaxBatchSize): {
    Properties+::: {
      MaxBatchSize:
        if !std.isNumber(MaxBatchSize) then (error 'MaxBatchSize must be an number')
        else MaxBatchSize,
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
        else if !std.objectHas(Runtime, 'Name') then (error ' have attribute Name')
        else if !std.objectHas(Runtime, 'RuntimeVersion') then (error ' have attribute RuntimeVersion')
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
