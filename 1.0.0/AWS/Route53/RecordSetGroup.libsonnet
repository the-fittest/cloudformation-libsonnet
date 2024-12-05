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
    Type: 'AWS::Route53::RecordSetGroup',
  },
  setComment(Comment): {
    Properties+::: {
      Comment:
        if !std.isString(Comment) then (error 'Comment must be a string')
        else if std.isEmpty(Comment) then (error 'Comment must be not empty')
        else Comment,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setHostedZoneName(HostedZoneName): {
    Properties+::: {
      HostedZoneName:
        if !std.isString(HostedZoneName) then (error 'HostedZoneName must be a string')
        else if std.isEmpty(HostedZoneName) then (error 'HostedZoneName must be not empty')
        else HostedZoneName,
    },
  },
  setRecordSets(RecordSets): {
    Properties+::: {
      RecordSets:
        if !std.isArray(RecordSets) then (error 'RecordSets must be an array')
        else RecordSets,
    },
  },
  setRecordSetsMixin(RecordSets): {
    Properties+::: {
      RecordSets+: RecordSets,
    },
  },
  setHostedZoneId(HostedZoneId): {
    Properties+::: {
      HostedZoneId:
        if !std.isString(HostedZoneId) then (error 'HostedZoneId must be a string')
        else if std.isEmpty(HostedZoneId) then (error 'HostedZoneId must be not empty')
        else HostedZoneId,
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
