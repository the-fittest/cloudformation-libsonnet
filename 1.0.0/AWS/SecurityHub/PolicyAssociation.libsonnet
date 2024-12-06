{
  new(
    TargetId,
    TargetType,
    ConfigurationPolicyId,
  ): {
    local base = self,
    Properties: {
      TargetId:
        if !std.isString(TargetId) then (error 'TargetId must be a string')
        else if std.isEmpty(TargetId) then (error 'TargetId must be not empty')
        else TargetId,
      TargetType:
        if !std.isString(TargetType) then (error 'TargetType must be a string')
        else if std.isEmpty(TargetType) then (error 'TargetType must be not empty')
        else if TargetType != 'ACCOUNT' && TargetType != 'ORGANIZATIONAL_UNIT' && TargetType != 'ROOT' then (error "TargetType should be 'ACCOUNT' or 'ORGANIZATIONAL_UNIT' or 'ROOT'")
        else TargetType,
      ConfigurationPolicyId:
        if !std.isString(ConfigurationPolicyId) then (error 'ConfigurationPolicyId must be a string')
        else if std.isEmpty(ConfigurationPolicyId) then (error 'ConfigurationPolicyId must be not empty')
        else ConfigurationPolicyId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::PolicyAssociation',
  },
  setAssociationStatus(AssociationStatus): {
    Properties+::: {
      AssociationStatus:
        if !std.isString(AssociationStatus) then (error 'AssociationStatus must be a string')
        else if std.isEmpty(AssociationStatus) then (error 'AssociationStatus must be not empty')
        else if AssociationStatus != 'SUCCESS' && AssociationStatus != 'PENDING' && AssociationStatus != 'FAILED' then (error "AssociationStatus should be 'SUCCESS' or 'PENDING' or 'FAILED'")
        else AssociationStatus,
    },
  },
  setAssociationType(AssociationType): {
    Properties+::: {
      AssociationType:
        if !std.isString(AssociationType) then (error 'AssociationType must be a string')
        else if std.isEmpty(AssociationType) then (error 'AssociationType must be not empty')
        else if AssociationType != 'APPLIED' && AssociationType != 'INHERITED' then (error "AssociationType should be 'APPLIED' or 'INHERITED'")
        else AssociationType,
    },
  },
  setAssociationStatusMessage(AssociationStatusMessage): {
    Properties+::: {
      AssociationStatusMessage:
        if !std.isString(AssociationStatusMessage) then (error 'AssociationStatusMessage must be a string')
        else if std.isEmpty(AssociationStatusMessage) then (error 'AssociationStatusMessage must be not empty')
        else AssociationStatusMessage,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setAssociationIdentifier(AssociationIdentifier): {
    Properties+::: {
      AssociationIdentifier:
        if !std.isString(AssociationIdentifier) then (error 'AssociationIdentifier must be a string')
        else if std.isEmpty(AssociationIdentifier) then (error 'AssociationIdentifier must be not empty')
        else AssociationIdentifier,
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
