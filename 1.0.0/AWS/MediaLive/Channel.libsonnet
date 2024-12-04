{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::Channel',
  },
  withInputAttachments(InputAttachments): {
    Properties+::: {
      InputAttachments: (if std.isArray(InputAttachments) then InputAttachments else [InputAttachments]),
    },
  },
  withInputAttachmentsMixin(InputAttachments): {
    Properties+::: {
      InputAttachments+: (if std.isArray(InputAttachments) then InputAttachments else [InputAttachments]),
    },
  },
  withInputSpecification(InputSpecification): {
    assert std.isObject(InputSpecification) : 'InputSpecification must be a object',
    Properties+::: {
      InputSpecification: InputSpecification,
    },
  },
  withDestinations(Destinations): {
    Properties+::: {
      Destinations: (if std.isArray(Destinations) then Destinations else [Destinations]),
    },
  },
  withDestinationsMixin(Destinations): {
    Properties+::: {
      Destinations+: (if std.isArray(Destinations) then Destinations else [Destinations]),
    },
  },
  withVpc(Vpc): {
    assert std.isObject(Vpc) : 'Vpc must be a object',
    Properties+::: {
      Vpc: Vpc,
    },
  },
  withMaintenance(Maintenance): {
    assert std.isObject(Maintenance) : 'Maintenance must be a object',
    Properties+::: {
      Maintenance: Maintenance,
    },
  },
  withLogLevel(LogLevel): {
    assert std.isString(LogLevel) : 'LogLevel must be a string',
    Properties+::: {
      LogLevel: LogLevel,
    },
  },
  withRoleArn(RoleArn): {
    assert std.isString(RoleArn) : 'RoleArn must be a string',
    Properties+::: {
      RoleArn: RoleArn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withChannelClass(ChannelClass): {
    assert std.isString(ChannelClass) : 'ChannelClass must be a string',
    Properties+::: {
      ChannelClass: ChannelClass,
    },
  },
  withEncoderSettings(EncoderSettings): {
    assert std.isObject(EncoderSettings) : 'EncoderSettings must be a object',
    Properties+::: {
      EncoderSettings: EncoderSettings,
    },
  },
  withAnywhereSettings(AnywhereSettings): {
    assert std.isObject(AnywhereSettings) : 'AnywhereSettings must be a object',
    Properties+::: {
      AnywhereSettings: AnywhereSettings,
    },
  },
  withCdiInputSpecification(CdiInputSpecification): {
    assert std.isObject(CdiInputSpecification) : 'CdiInputSpecification must be a object',
    Properties+::: {
      CdiInputSpecification: CdiInputSpecification,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withInputs(Inputs): {
    Properties+::: {
      Inputs: (if std.isArray(Inputs) then Inputs else [Inputs]),
    },
  },
  withInputsMixin(Inputs): {
    Properties+::: {
      Inputs+: (if std.isArray(Inputs) then Inputs else [Inputs]),
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
}
