{
  new(
    VerifiedAccessInstanceId,
  ): {
    local base = self,
    Properties: {
      VerifiedAccessInstanceId:
        if !std.isString(VerifiedAccessInstanceId) then (error 'VerifiedAccessInstanceId must be a string')
        else if std.isEmpty(VerifiedAccessInstanceId) then (error 'VerifiedAccessInstanceId must be not empty')
        else VerifiedAccessInstanceId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VerifiedAccessGroup',
  },
  setVerifiedAccessGroupId(VerifiedAccessGroupId): {
    Properties+::: {
      VerifiedAccessGroupId:
        if !std.isString(VerifiedAccessGroupId) then (error 'VerifiedAccessGroupId must be a string')
        else if std.isEmpty(VerifiedAccessGroupId) then (error 'VerifiedAccessGroupId must be not empty')
        else VerifiedAccessGroupId,
    },
  },
  setVerifiedAccessGroupArn(VerifiedAccessGroupArn): {
    Properties+::: {
      VerifiedAccessGroupArn:
        if !std.isString(VerifiedAccessGroupArn) then (error 'VerifiedAccessGroupArn must be a string')
        else if std.isEmpty(VerifiedAccessGroupArn) then (error 'VerifiedAccessGroupArn must be not empty')
        else VerifiedAccessGroupArn,
    },
  },
  setOwner(Owner): {
    Properties+::: {
      Owner:
        if !std.isString(Owner) then (error 'Owner must be a string')
        else if std.isEmpty(Owner) then (error 'Owner must be not empty')
        else Owner,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
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
  setPolicyDocument(PolicyDocument): {
    Properties+::: {
      PolicyDocument:
        if !std.isString(PolicyDocument) then (error 'PolicyDocument must be a string')
        else if std.isEmpty(PolicyDocument) then (error 'PolicyDocument must be not empty')
        else PolicyDocument,
    },
  },
  setPolicyEnabled(PolicyEnabled): {
    Properties+::: {
      PolicyEnabled:
        if !std.isBoolean(PolicyEnabled) then (error 'PolicyEnabled must be a boolean') else PolicyEnabled,
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
  setSseSpecification(SseSpecification): {
    Properties+::: {
      SseSpecification:
        if !std.isObject(SseSpecification) then (error 'SseSpecification must be an object')
        else SseSpecification,
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
