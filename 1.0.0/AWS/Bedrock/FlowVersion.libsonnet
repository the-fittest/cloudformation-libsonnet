{
  new(
    FlowArn,
  ): {
    local base = self,
    Properties: {
      FlowArn:
        if !std.isString(FlowArn) then (error 'FlowArn must be a string')
        else if std.isEmpty(FlowArn) then (error 'FlowArn must be not empty')
        else FlowArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::FlowVersion',
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDefinition(Definition): {
    Properties+::: {
      Definition:
        if !std.isObject(Definition) then (error 'Definition must be an object')
        else Definition,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else if std.length(ExecutionRoleArn) > 2048 then error ('ExecutionRoleArn should have not more than 2048 characters')
        else ExecutionRoleArn,
    },
  },
  setFlowId(FlowId): {
    Properties+::: {
      FlowId:
        if !std.isString(FlowId) then (error 'FlowId must be a string')
        else if std.isEmpty(FlowId) then (error 'FlowId must be not empty')
        else FlowId,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'Failed' && Status != 'Prepared' && Status != 'Preparing' && Status != 'NotPrepared' then (error "Status should be 'Failed' or 'Prepared' or 'Preparing' or 'NotPrepared'")
        else Status,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
    Properties+::: {
      CustomerEncryptionKeyArn:
        if !std.isString(CustomerEncryptionKeyArn) then (error 'CustomerEncryptionKeyArn must be a string')
        else if std.isEmpty(CustomerEncryptionKeyArn) then (error 'CustomerEncryptionKeyArn must be not empty')
        else if std.length(CustomerEncryptionKeyArn) < 1 then error ('CustomerEncryptionKeyArn should have at least 1 characters')
        else if std.length(CustomerEncryptionKeyArn) > 2048 then error ('CustomerEncryptionKeyArn should have not more than 2048 characters')
        else CustomerEncryptionKeyArn,
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
