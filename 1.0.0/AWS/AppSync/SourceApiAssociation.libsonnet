{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::SourceApiAssociation',
  },
  setSourceApiIdentifier(SourceApiIdentifier): {
    Properties+::: {
      SourceApiIdentifier:
        if !std.isString(SourceApiIdentifier) then (error 'SourceApiIdentifier must be a string')
        else if std.isEmpty(SourceApiIdentifier) then (error 'SourceApiIdentifier must be not empty')
        else SourceApiIdentifier,
    },
  },
  setMergedApiIdentifier(MergedApiIdentifier): {
    Properties+::: {
      MergedApiIdentifier:
        if !std.isString(MergedApiIdentifier) then (error 'MergedApiIdentifier must be a string')
        else if std.isEmpty(MergedApiIdentifier) then (error 'MergedApiIdentifier must be not empty')
        else MergedApiIdentifier,
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
  setSourceApiAssociationConfig(SourceApiAssociationConfig): {
    Properties+::: {
      SourceApiAssociationConfig: SourceApiAssociationConfig,
    },
  },
  setAssociationId(AssociationId): {
    Properties+::: {
      AssociationId:
        if !std.isString(AssociationId) then (error 'AssociationId must be a string')
        else if std.isEmpty(AssociationId) then (error 'AssociationId must be not empty')
        else AssociationId,
    },
  },
  setAssociationArn(AssociationArn): {
    Properties+::: {
      AssociationArn:
        if !std.isString(AssociationArn) then (error 'AssociationArn must be a string')
        else if std.isEmpty(AssociationArn) then (error 'AssociationArn must be not empty')
        else AssociationArn,
    },
  },
  setSourceApiId(SourceApiId): {
    Properties+::: {
      SourceApiId:
        if !std.isString(SourceApiId) then (error 'SourceApiId must be a string')
        else if std.isEmpty(SourceApiId) then (error 'SourceApiId must be not empty')
        else SourceApiId,
    },
  },
  setSourceApiArn(SourceApiArn): {
    Properties+::: {
      SourceApiArn:
        if !std.isString(SourceApiArn) then (error 'SourceApiArn must be a string')
        else if std.isEmpty(SourceApiArn) then (error 'SourceApiArn must be not empty')
        else SourceApiArn,
    },
  },
  setMergedApiId(MergedApiId): {
    Properties+::: {
      MergedApiId:
        if !std.isString(MergedApiId) then (error 'MergedApiId must be a string')
        else if std.isEmpty(MergedApiId) then (error 'MergedApiId must be not empty')
        else MergedApiId,
    },
  },
  setMergedApiArn(MergedApiArn): {
    Properties+::: {
      MergedApiArn:
        if !std.isString(MergedApiArn) then (error 'MergedApiArn must be a string')
        else if std.isEmpty(MergedApiArn) then (error 'MergedApiArn must be not empty')
        else MergedApiArn,
    },
  },
  setSourceApiAssociationStatus(SourceApiAssociationStatus): {
    Properties+::: {
      SourceApiAssociationStatus:
        if !std.isString(SourceApiAssociationStatus) then (error 'SourceApiAssociationStatus must be a string')
        else if std.isEmpty(SourceApiAssociationStatus) then (error 'SourceApiAssociationStatus must be not empty')
        else if SourceApiAssociationStatus != 'MERGE_SCHEDULED' && SourceApiAssociationStatus != 'MERGE_FAILED' && SourceApiAssociationStatus != 'MERGE_SUCCESS' && SourceApiAssociationStatus != 'MERGE_IN_PROGRESS' && SourceApiAssociationStatus != 'AUTO_MERGE_SCHEDULE_FAILED' && SourceApiAssociationStatus != 'DELETION_SCHEDULED' && SourceApiAssociationStatus != 'DELETION_IN_PROGRESS' && SourceApiAssociationStatus != 'DELETION_FAILED' then (error "SourceApiAssociationStatus should be 'MERGE_SCHEDULED' or 'MERGE_FAILED' or 'MERGE_SUCCESS' or 'MERGE_IN_PROGRESS' or 'AUTO_MERGE_SCHEDULE_FAILED' or 'DELETION_SCHEDULED' or 'DELETION_IN_PROGRESS' or 'DELETION_FAILED'")
        else SourceApiAssociationStatus,
    },
  },
  setSourceApiAssociationStatusDetail(SourceApiAssociationStatusDetail): {
    Properties+::: {
      SourceApiAssociationStatusDetail:
        if !std.isString(SourceApiAssociationStatusDetail) then (error 'SourceApiAssociationStatusDetail must be a string')
        else if std.isEmpty(SourceApiAssociationStatusDetail) then (error 'SourceApiAssociationStatusDetail must be not empty')
        else SourceApiAssociationStatusDetail,
    },
  },
  setLastSuccessfulMergeDate(LastSuccessfulMergeDate): {
    Properties+::: {
      LastSuccessfulMergeDate:
        if !std.isString(LastSuccessfulMergeDate) then (error 'LastSuccessfulMergeDate must be a string')
        else if std.isEmpty(LastSuccessfulMergeDate) then (error 'LastSuccessfulMergeDate must be not empty')
        else LastSuccessfulMergeDate,
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
