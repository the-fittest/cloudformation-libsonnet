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
    Type: 'AWS::SES::MailManagerArchive',
  },
  setArchiveArn(ArchiveArn): {
    Properties+::: {
      ArchiveArn:
        if !std.isString(ArchiveArn) then (error 'ArchiveArn must be a string')
        else if std.isEmpty(ArchiveArn) then (error 'ArchiveArn must be not empty')
        else ArchiveArn,
    },
  },
  setArchiveId(ArchiveId): {
    Properties+::: {
      ArchiveId:
        if !std.isString(ArchiveId) then (error 'ArchiveId must be a string')
        else if std.isEmpty(ArchiveId) then (error 'ArchiveId must be not empty')
        else if std.length(ArchiveId) < 1 then error ('ArchiveId should have at least 1 characters')
        else if std.length(ArchiveId) > 66 then error ('ArchiveId should have not more than 66 characters')
        else ArchiveId,
    },
  },
  setArchiveName(ArchiveName): {
    Properties+::: {
      ArchiveName:
        if !std.isString(ArchiveName) then (error 'ArchiveName must be a string')
        else if std.isEmpty(ArchiveName) then (error 'ArchiveName must be not empty')
        else if std.length(ArchiveName) < 1 then error ('ArchiveName should have at least 1 characters')
        else if std.length(ArchiveName) > 64 then error ('ArchiveName should have not more than 64 characters')
        else ArchiveName,
    },
  },
  setArchiveState(ArchiveState): {
    Properties+::: {
      ArchiveState:
        if !std.isString(ArchiveState) then (error 'ArchiveState must be a string')
        else if std.isEmpty(ArchiveState) then (error 'ArchiveState must be not empty')
        else if ArchiveState != 'ACTIVE' && ArchiveState != 'PENDING_DELETION' then (error "ArchiveState should be 'ACTIVE' or 'PENDING_DELETION'")
        else ArchiveState,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else KmsKeyArn,
    },
  },
  setRetention(Retention): {
    Properties+::: {
      Retention: Retention,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
