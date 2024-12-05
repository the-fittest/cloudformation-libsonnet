{
  new(
    KnowledgeBaseType,
    Name,
  ): {
    local base = self,
    Properties: {
      KnowledgeBaseType:
        if !std.isString(KnowledgeBaseType) then (error 'KnowledgeBaseType must be a string')
        else if std.isEmpty(KnowledgeBaseType) then (error 'KnowledgeBaseType must be not empty')
        else if KnowledgeBaseType != 'EXTERNAL' && KnowledgeBaseType != 'CUSTOM' && KnowledgeBaseType != 'MESSAGE_TEMPLATES' && KnowledgeBaseType != 'MANAGED' then (error "KnowledgeBaseType should be 'EXTERNAL' or 'CUSTOM' or 'MESSAGE_TEMPLATES' or 'MANAGED'")
        else KnowledgeBaseType,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::KnowledgeBase',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setKnowledgeBaseArn(KnowledgeBaseArn): {
    Properties+::: {
      KnowledgeBaseArn:
        if !std.isString(KnowledgeBaseArn) then (error 'KnowledgeBaseArn must be a string')
        else if std.isEmpty(KnowledgeBaseArn) then (error 'KnowledgeBaseArn must be not empty')
        else KnowledgeBaseArn,
    },
  },
  setKnowledgeBaseId(KnowledgeBaseId): {
    Properties+::: {
      KnowledgeBaseId:
        if !std.isString(KnowledgeBaseId) then (error 'KnowledgeBaseId must be a string')
        else if std.isEmpty(KnowledgeBaseId) then (error 'KnowledgeBaseId must be not empty')
        else KnowledgeBaseId,
    },
  },
  setRenderingConfiguration(RenderingConfiguration): {
    Properties+::: {
      RenderingConfiguration:
        if !std.isObject(RenderingConfiguration) then (error 'RenderingConfiguration must be an object')
        else RenderingConfiguration,
    },
  },
  setServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
    Properties+::: {
      ServerSideEncryptionConfiguration:
        if !std.isObject(ServerSideEncryptionConfiguration) then (error 'ServerSideEncryptionConfiguration must be an object')
        else ServerSideEncryptionConfiguration,
    },
  },
  setSourceConfiguration(SourceConfiguration): {
    Properties+::: {
      SourceConfiguration: SourceConfiguration,
    },
  },
  setVectorIngestionConfiguration(VectorIngestionConfiguration): {
    Properties+::: {
      VectorIngestionConfiguration:
        if !std.isObject(VectorIngestionConfiguration) then (error 'VectorIngestionConfiguration must be an object')
        else VectorIngestionConfiguration,
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
