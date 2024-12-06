{
  new(
    LaunchTemplateData,
  ): {
    local base = self,
    Properties: {
      LaunchTemplateData:
        if !std.isObject(LaunchTemplateData) then (error 'LaunchTemplateData must be an object')
        else LaunchTemplateData,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::LaunchTemplate',
  },
  setLaunchTemplateName(LaunchTemplateName): {
    Properties+::: {
      LaunchTemplateName:
        if !std.isString(LaunchTemplateName) then (error 'LaunchTemplateName must be a string')
        else if std.isEmpty(LaunchTemplateName) then (error 'LaunchTemplateName must be not empty')
        else LaunchTemplateName,
    },
  },
  setVersionDescription(VersionDescription): {
    Properties+::: {
      VersionDescription:
        if !std.isString(VersionDescription) then (error 'VersionDescription must be a string')
        else if std.isEmpty(VersionDescription) then (error 'VersionDescription must be not empty')
        else VersionDescription,
    },
  },
  setTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications:
        if !std.isArray(TagSpecifications) then (error 'TagSpecifications must be an array')
        else TagSpecifications,
    },
  },
  pushTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications+: TagSpecifications,
    },
  },
  setLatestVersionNumber(LatestVersionNumber): {
    Properties+::: {
      LatestVersionNumber:
        if !std.isString(LatestVersionNumber) then (error 'LatestVersionNumber must be a string')
        else if std.isEmpty(LatestVersionNumber) then (error 'LatestVersionNumber must be not empty')
        else LatestVersionNumber,
    },
  },
  setLaunchTemplateId(LaunchTemplateId): {
    Properties+::: {
      LaunchTemplateId:
        if !std.isString(LaunchTemplateId) then (error 'LaunchTemplateId must be a string')
        else if std.isEmpty(LaunchTemplateId) then (error 'LaunchTemplateId must be not empty')
        else LaunchTemplateId,
    },
  },
  setDefaultVersionNumber(DefaultVersionNumber): {
    Properties+::: {
      DefaultVersionNumber:
        if !std.isString(DefaultVersionNumber) then (error 'DefaultVersionNumber must be a string')
        else if std.isEmpty(DefaultVersionNumber) then (error 'DefaultVersionNumber must be not empty')
        else DefaultVersionNumber,
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
