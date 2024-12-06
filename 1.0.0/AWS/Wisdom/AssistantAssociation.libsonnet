{
  new(
    Association,
    AssociationType,
    AssistantId,
  ): {
    local base = self,
    Properties: {
      Association:
        if !std.isObject(Association) then (error 'Association must be an object')
        else if !std.objectHas(Association, 'KnowledgeBaseId') then (error ' have attribute KnowledgeBaseId')
        else Association,
      AssociationType:
        if !std.isString(AssociationType) then (error 'AssociationType must be a string')
        else if std.isEmpty(AssociationType) then (error 'AssociationType must be not empty')
        else if AssociationType != 'KNOWLEDGE_BASE' then (error "AssociationType should be 'KNOWLEDGE_BASE'")
        else AssociationType,
      AssistantId:
        if !std.isString(AssistantId) then (error 'AssistantId must be a string')
        else if std.isEmpty(AssistantId) then (error 'AssistantId must be not empty')
        else AssistantId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::AssistantAssociation',
  },
  setAssistantAssociationArn(AssistantAssociationArn): {
    Properties+::: {
      AssistantAssociationArn:
        if !std.isString(AssistantAssociationArn) then (error 'AssistantAssociationArn must be a string')
        else if std.isEmpty(AssistantAssociationArn) then (error 'AssistantAssociationArn must be not empty')
        else AssistantAssociationArn,
    },
  },
  setAssistantArn(AssistantArn): {
    Properties+::: {
      AssistantArn:
        if !std.isString(AssistantArn) then (error 'AssistantArn must be a string')
        else if std.isEmpty(AssistantArn) then (error 'AssistantArn must be not empty')
        else AssistantArn,
    },
  },
  setAssistantAssociationId(AssistantAssociationId): {
    Properties+::: {
      AssistantAssociationId:
        if !std.isString(AssistantAssociationId) then (error 'AssistantAssociationId must be a string')
        else if std.isEmpty(AssistantAssociationId) then (error 'AssistantAssociationId must be not empty')
        else AssistantAssociationId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
