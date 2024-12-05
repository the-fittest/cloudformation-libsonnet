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
    Type: 'AWS::DMS::MigrationProject',
  },
  setMigrationProjectName(MigrationProjectName): {
    Properties+::: {
      MigrationProjectName:
        if !std.isString(MigrationProjectName) then (error 'MigrationProjectName must be a string')
        else if std.isEmpty(MigrationProjectName) then (error 'MigrationProjectName must be not empty')
        else if std.length(MigrationProjectName) < 1 then error ('MigrationProjectName should have at least 1 characters')
        else if std.length(MigrationProjectName) > 255 then error ('MigrationProjectName should have not more than 255 characters')
        else MigrationProjectName,
    },
  },
  setMigrationProjectIdentifier(MigrationProjectIdentifier): {
    Properties+::: {
      MigrationProjectIdentifier:
        if !std.isString(MigrationProjectIdentifier) then (error 'MigrationProjectIdentifier must be a string')
        else if std.isEmpty(MigrationProjectIdentifier) then (error 'MigrationProjectIdentifier must be not empty')
        else if std.length(MigrationProjectIdentifier) < 1 then error ('MigrationProjectIdentifier should have at least 1 characters')
        else if std.length(MigrationProjectIdentifier) > 255 then error ('MigrationProjectIdentifier should have not more than 255 characters')
        else MigrationProjectIdentifier,
    },
  },
  setMigrationProjectArn(MigrationProjectArn): {
    Properties+::: {
      MigrationProjectArn:
        if !std.isString(MigrationProjectArn) then (error 'MigrationProjectArn must be a string')
        else if std.isEmpty(MigrationProjectArn) then (error 'MigrationProjectArn must be not empty')
        else if std.length(MigrationProjectArn) < 1 then error ('MigrationProjectArn should have at least 1 characters')
        else if std.length(MigrationProjectArn) > 255 then error ('MigrationProjectArn should have not more than 255 characters')
        else MigrationProjectArn,
    },
  },
  setMigrationProjectCreationTime(MigrationProjectCreationTime): {
    Properties+::: {
      MigrationProjectCreationTime:
        if !std.isString(MigrationProjectCreationTime) then (error 'MigrationProjectCreationTime must be a string')
        else if std.isEmpty(MigrationProjectCreationTime) then (error 'MigrationProjectCreationTime must be not empty')
        else if std.length(MigrationProjectCreationTime) < 1 then error ('MigrationProjectCreationTime should have at least 1 characters')
        else if std.length(MigrationProjectCreationTime) > 40 then error ('MigrationProjectCreationTime should have not more than 40 characters')
        else MigrationProjectCreationTime,
    },
  },
  setInstanceProfileIdentifier(InstanceProfileIdentifier): {
    Properties+::: {
      InstanceProfileIdentifier:
        if !std.isString(InstanceProfileIdentifier) then (error 'InstanceProfileIdentifier must be a string')
        else if std.isEmpty(InstanceProfileIdentifier) then (error 'InstanceProfileIdentifier must be not empty')
        else if std.length(InstanceProfileIdentifier) < 1 then error ('InstanceProfileIdentifier should have at least 1 characters')
        else if std.length(InstanceProfileIdentifier) > 255 then error ('InstanceProfileIdentifier should have not more than 255 characters')
        else InstanceProfileIdentifier,
    },
  },
  setInstanceProfileName(InstanceProfileName): {
    Properties+::: {
      InstanceProfileName:
        if !std.isString(InstanceProfileName) then (error 'InstanceProfileName must be a string')
        else if std.isEmpty(InstanceProfileName) then (error 'InstanceProfileName must be not empty')
        else if std.length(InstanceProfileName) < 1 then error ('InstanceProfileName should have at least 1 characters')
        else if std.length(InstanceProfileName) > 255 then error ('InstanceProfileName should have not more than 255 characters')
        else InstanceProfileName,
    },
  },
  setInstanceProfileArn(InstanceProfileArn): {
    Properties+::: {
      InstanceProfileArn:
        if !std.isString(InstanceProfileArn) then (error 'InstanceProfileArn must be a string')
        else if std.isEmpty(InstanceProfileArn) then (error 'InstanceProfileArn must be not empty')
        else if std.length(InstanceProfileArn) < 1 then error ('InstanceProfileArn should have at least 1 characters')
        else if std.length(InstanceProfileArn) > 255 then error ('InstanceProfileArn should have not more than 255 characters')
        else InstanceProfileArn,
    },
  },
  setTransformationRules(TransformationRules): {
    Properties+::: {
      TransformationRules:
        if !std.isString(TransformationRules) then (error 'TransformationRules must be a string')
        else if std.isEmpty(TransformationRules) then (error 'TransformationRules must be not empty')
        else TransformationRules,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setSchemaConversionApplicationAttributes(SchemaConversionApplicationAttributes): {
    Properties+::: {
      SchemaConversionApplicationAttributes:
        if !std.isObject(SchemaConversionApplicationAttributes) then (error 'SchemaConversionApplicationAttributes must be an object')
        else SchemaConversionApplicationAttributes,
    },
  },
  setSourceDataProviderDescriptors(SourceDataProviderDescriptors): {
    Properties+::: {
      SourceDataProviderDescriptors:
        if !std.isArray(SourceDataProviderDescriptors) then (error 'SourceDataProviderDescriptors must be an array')
        else SourceDataProviderDescriptors,
    },
  },
  setSourceDataProviderDescriptorsMixin(SourceDataProviderDescriptors): {
    Properties+::: {
      SourceDataProviderDescriptors+: SourceDataProviderDescriptors,
    },
  },
  setTargetDataProviderDescriptors(TargetDataProviderDescriptors): {
    Properties+::: {
      TargetDataProviderDescriptors:
        if !std.isArray(TargetDataProviderDescriptors) then (error 'TargetDataProviderDescriptors must be an array')
        else TargetDataProviderDescriptors,
    },
  },
  setTargetDataProviderDescriptorsMixin(TargetDataProviderDescriptors): {
    Properties+::: {
      TargetDataProviderDescriptors+: TargetDataProviderDescriptors,
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
