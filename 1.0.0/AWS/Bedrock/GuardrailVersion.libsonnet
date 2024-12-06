{
  new(
    GuardrailIdentifier,
  ): {
    local base = self,
    Properties: {
      GuardrailIdentifier:
        if !std.isString(GuardrailIdentifier) then (error 'GuardrailIdentifier must be a string')
        else if std.isEmpty(GuardrailIdentifier) then (error 'GuardrailIdentifier must be not empty')
        else if std.length(GuardrailIdentifier) > 2048 then error ('GuardrailIdentifier should have not more than 2048 characters')
        else GuardrailIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::GuardrailVersion',
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
  setGuardrailArn(GuardrailArn): {
    Properties+::: {
      GuardrailArn:
        if !std.isString(GuardrailArn) then (error 'GuardrailArn must be a string')
        else if std.isEmpty(GuardrailArn) then (error 'GuardrailArn must be not empty')
        else if std.length(GuardrailArn) > 2048 then error ('GuardrailArn should have not more than 2048 characters')
        else GuardrailArn,
    },
  },
  setGuardrailId(GuardrailId): {
    Properties+::: {
      GuardrailId:
        if !std.isString(GuardrailId) then (error 'GuardrailId must be a string')
        else if std.isEmpty(GuardrailId) then (error 'GuardrailId must be not empty')
        else if std.length(GuardrailId) > 64 then error ('GuardrailId should have not more than 64 characters')
        else GuardrailId,
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
