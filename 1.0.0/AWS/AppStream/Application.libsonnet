{
  // AWS AppStream Application
  Application: {
    new(
      Name,
      IconS3Location,
      LaunchPath,
      Platforms,
      InstanceFamilies,
      AppBlockArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(IconS3Location) : 'IconS3Location must be an object',
        IconS3Location: IconS3Location,
        assert std.isString(LaunchPath) : 'LaunchPath must be a string',
        LaunchPath: LaunchPath,
        Platforms: (if std.isArray(Platforms) then Platforms else [Platforms]),
        InstanceFamilies: (if std.isArray(InstanceFamilies) then InstanceFamilies else [InstanceFamilies]),
        assert std.isString(AppBlockArn) : 'AppBlockArn must be a string',
        AppBlockArn: AppBlockArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppStream::Application',
    },
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: {
        DisplayName: DisplayName,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withLaunchParameters(LaunchParameters): {
      assert std.isString(LaunchParameters) : 'LaunchParameters must be a string',
      Properties+::: {
        LaunchParameters: LaunchParameters,
      },
    },
    withWorkingDirectory(WorkingDirectory): {
      assert std.isString(WorkingDirectory) : 'WorkingDirectory must be a string',
      Properties+::: {
        WorkingDirectory: WorkingDirectory,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withAttributesToDelete(AttributesToDelete): {
      Properties+::: {
        AttributesToDelete: (if std.isArray(AttributesToDelete) then AttributesToDelete else [AttributesToDelete]),
      },
    },
    withAttributesToDeleteMixin(AttributesToDelete): {
      Properties+::: {
        AttributesToDelete+: (if std.isArray(AttributesToDelete) then AttributesToDelete else [AttributesToDelete]),
      },
    },
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: {
        CreatedTime: CreatedTime,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
