{
  new(
    RepositoryName,
  ): {
    local base = self,
    Properties: {
      RepositoryName:
        if !std.isString(RepositoryName) then (error 'RepositoryName must be a string')
        else if std.isEmpty(RepositoryName) then (error 'RepositoryName must be not empty')
        else RepositoryName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeCommit::Repository',
  },
  setCloneUrlHttp(CloneUrlHttp): {
    Properties+::: {
      CloneUrlHttp:
        if !std.isString(CloneUrlHttp) then (error 'CloneUrlHttp must be a string')
        else if std.isEmpty(CloneUrlHttp) then (error 'CloneUrlHttp must be not empty')
        else CloneUrlHttp,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setCloneUrlSsh(CloneUrlSsh): {
    Properties+::: {
      CloneUrlSsh:
        if !std.isString(CloneUrlSsh) then (error 'CloneUrlSsh must be a string')
        else if std.isEmpty(CloneUrlSsh) then (error 'CloneUrlSsh must be not empty')
        else CloneUrlSsh,
    },
  },
  setTriggers(Triggers): {
    Properties+::: {
      Triggers:
        if !std.isArray(Triggers) then (error 'Triggers must be an array')
        else Triggers,
    },
  },
  setTriggersMixin(Triggers): {
    Properties+::: {
      Triggers+: Triggers,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCode(Code): {
    Properties+::: {
      Code:
        if !std.isObject(Code) then (error 'Code must be an object')
        else if !std.objectHas(Code, 'S3') then (error ' have attribute S3')
        else Code,
    },
  },
  setRepositoryDescription(RepositoryDescription): {
    Properties+::: {
      RepositoryDescription:
        if !std.isString(RepositoryDescription) then (error 'RepositoryDescription must be a string')
        else if std.isEmpty(RepositoryDescription) then (error 'RepositoryDescription must be not empty')
        else RepositoryDescription,
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
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
