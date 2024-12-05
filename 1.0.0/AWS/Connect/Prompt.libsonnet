{
  new(
    InstanceArn,
    Name,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::Prompt',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 250 then error ('Description should have not more than 250 characters')
        else Description,
    },
  },
  setS3Uri(S3Uri): {
    Properties+::: {
      S3Uri:
        if !std.isString(S3Uri) then (error 'S3Uri must be a string')
        else if std.isEmpty(S3Uri) then (error 'S3Uri must be not empty')
        else if std.length(S3Uri) < 1 then error ('S3Uri should have at least 1 characters')
        else if std.length(S3Uri) > 2000 then error ('S3Uri should have not more than 2000 characters')
        else S3Uri,
    },
  },
  setPromptArn(PromptArn): {
    Properties+::: {
      PromptArn:
        if !std.isString(PromptArn) then (error 'PromptArn must be a string')
        else if std.isEmpty(PromptArn) then (error 'PromptArn must be not empty')
        else PromptArn,
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
