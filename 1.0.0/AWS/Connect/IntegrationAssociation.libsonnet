{
  new(
    InstanceId,
    IntegrationType,
    IntegrationArn,
  ): {
    local base = self,
    Properties: {
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else if std.length(InstanceId) < 1 then error ('InstanceId should have at least 1 characters')
        else if std.length(InstanceId) > 100 then error ('InstanceId should have not more than 100 characters')
        else InstanceId,
      IntegrationType:
        if !std.isString(IntegrationType) then (error 'IntegrationType must be a string')
        else if std.isEmpty(IntegrationType) then (error 'IntegrationType must be not empty')
        else if IntegrationType != 'LEX_BOT' && IntegrationType != 'LAMBDA_FUNCTION' && IntegrationType != 'APPLICATION' then (error "IntegrationType should be 'LEX_BOT' or 'LAMBDA_FUNCTION' or 'APPLICATION'")
        else IntegrationType,
      IntegrationArn:
        if !std.isString(IntegrationArn) then (error 'IntegrationArn must be a string')
        else if std.isEmpty(IntegrationArn) then (error 'IntegrationArn must be not empty')
        else if std.length(IntegrationArn) < 1 then error ('IntegrationArn should have at least 1 characters')
        else if std.length(IntegrationArn) > 140 then error ('IntegrationArn should have not more than 140 characters')
        else IntegrationArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::IntegrationAssociation',
  },
  setIntegrationAssociationId(IntegrationAssociationId): {
    Properties+::: {
      IntegrationAssociationId:
        if !std.isString(IntegrationAssociationId) then (error 'IntegrationAssociationId must be a string')
        else if std.isEmpty(IntegrationAssociationId) then (error 'IntegrationAssociationId must be not empty')
        else IntegrationAssociationId,
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
