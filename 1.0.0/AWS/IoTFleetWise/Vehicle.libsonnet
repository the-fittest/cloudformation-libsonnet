{
  new(
    Name,
    DecoderManifestArn,
    ModelManifestArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      DecoderManifestArn:
        if !std.isString(DecoderManifestArn) then (error 'DecoderManifestArn must be a string')
        else if std.isEmpty(DecoderManifestArn) then (error 'DecoderManifestArn must be not empty')
        else DecoderManifestArn,
      ModelManifestArn:
        if !std.isString(ModelManifestArn) then (error 'ModelManifestArn must be a string')
        else if std.isEmpty(ModelManifestArn) then (error 'ModelManifestArn must be not empty')
        else ModelManifestArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTFleetWise::Vehicle',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAssociationBehavior(AssociationBehavior): {
    Properties+::: {
      AssociationBehavior:
        if !std.isString(AssociationBehavior) then (error 'AssociationBehavior must be a string')
        else if std.isEmpty(AssociationBehavior) then (error 'AssociationBehavior must be not empty')
        else if AssociationBehavior != 'CreateIotThing' && AssociationBehavior != 'ValidateIotThingExists' then (error "AssociationBehavior should be 'CreateIotThing' or 'ValidateIotThingExists'")
        else AssociationBehavior,
    },
  },
  setAttributes(Attributes): {
    Properties+::: {
      Attributes:
        if !std.isObject(Attributes) then (error 'Attributes must be an object')
        else Attributes,
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
  setLastModificationTime(LastModificationTime): {
    Properties+::: {
      LastModificationTime:
        if !std.isString(LastModificationTime) then (error 'LastModificationTime must be a string')
        else if std.isEmpty(LastModificationTime) then (error 'LastModificationTime must be not empty')
        else LastModificationTime,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
