{
  new(
    FlowName,
    Tasks,
    SourceFlowConfig,
    DestinationFlowConfigList,
    TriggerConfig,
  ): {
    local base = self,
    Properties: {
      FlowName:
        if !std.isString(FlowName) then (error 'FlowName must be a string')
        else if std.isEmpty(FlowName) then (error 'FlowName must be not empty')
        else if std.length(FlowName) < 1 then error ('FlowName should have at least 1 characters')
        else if std.length(FlowName) > 256 then error ('FlowName should have not more than 256 characters')
        else FlowName,
      Tasks:
        if !std.isArray(Tasks) then (error 'Tasks must be an array')
        else Tasks,
      SourceFlowConfig:
        if !std.isObject(SourceFlowConfig) then (error 'SourceFlowConfig must be an object')
        else if !std.objectHas(SourceFlowConfig, 'ConnectorType') then (error ' have attribute ConnectorType')
        else if !std.objectHas(SourceFlowConfig, 'SourceConnectorProperties') then (error ' have attribute SourceConnectorProperties')
        else SourceFlowConfig,
      DestinationFlowConfigList:
        if !std.isArray(DestinationFlowConfigList) then (error 'DestinationFlowConfigList must be an array')
        else DestinationFlowConfigList,
      TriggerConfig:
        if !std.isObject(TriggerConfig) then (error 'TriggerConfig must be an object')
        else if !std.objectHas(TriggerConfig, 'TriggerType') then (error ' have attribute TriggerType')
        else TriggerConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppFlow::Flow',
  },
  setFlowArn(FlowArn): {
    Properties+::: {
      FlowArn:
        if !std.isString(FlowArn) then (error 'FlowArn must be a string')
        else if std.isEmpty(FlowArn) then (error 'FlowArn must be not empty')
        else if std.length(FlowArn) > 512 then error ('FlowArn should have not more than 512 characters')
        else FlowArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setKMSArn(KMSArn): {
    Properties+::: {
      KMSArn:
        if !std.isString(KMSArn) then (error 'KMSArn must be a string')
        else if std.isEmpty(KMSArn) then (error 'KMSArn must be not empty')
        else if std.length(KMSArn) < 20 then error ('KMSArn should have at least 20 characters')
        else if std.length(KMSArn) > 2048 then error ('KMSArn should have not more than 2048 characters')
        else KMSArn,
    },
  },
  setFlowStatus(FlowStatus): {
    Properties+::: {
      FlowStatus:
        if !std.isString(FlowStatus) then (error 'FlowStatus must be a string')
        else if std.isEmpty(FlowStatus) then (error 'FlowStatus must be not empty')
        else if FlowStatus != 'Active' && FlowStatus != 'Suspended' && FlowStatus != 'Draft' then (error "FlowStatus should be 'Active' or 'Suspended' or 'Draft'")
        else FlowStatus,
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
  setMetadataCatalogConfig(MetadataCatalogConfig): {
    Properties+::: {
      MetadataCatalogConfig:
        if !std.isObject(MetadataCatalogConfig) then (error 'MetadataCatalogConfig must be an object')
        else MetadataCatalogConfig,
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
