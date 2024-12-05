{
  new(
    SourceArn,
  ): {
    local base = self,
    Properties: {
      SourceArn:
        if !std.isString(SourceArn) then (error 'SourceArn must be a string')
        else if std.isEmpty(SourceArn) then (error 'SourceArn must be not empty')
        else SourceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Events::Archive',
  },
  setArchiveName(ArchiveName): {
    Properties+::: {
      ArchiveName:
        if !std.isString(ArchiveName) then (error 'ArchiveName must be a string')
        else if std.isEmpty(ArchiveName) then (error 'ArchiveName must be not empty')
        else if std.length(ArchiveName) < 1 then error ('ArchiveName should have at least 1 characters')
        else if std.length(ArchiveName) > 48 then error ('ArchiveName should have not more than 48 characters')
        else ArchiveName,
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
  setEventPattern(EventPattern): {
    Properties+::: {
      EventPattern:
        if !std.isObject(EventPattern) then (error 'EventPattern must be an object')
        else EventPattern,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setRetentionDays(RetentionDays): {
    Properties+::: {
      RetentionDays:
        if !std.isNumber(RetentionDays) then (error 'RetentionDays must be an number')
        else RetentionDays,
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
