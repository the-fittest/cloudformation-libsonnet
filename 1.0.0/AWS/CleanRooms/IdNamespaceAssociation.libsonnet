{
  new(
    MembershipIdentifier,
    InputReferenceConfig,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
      MembershipIdentifier: MembershipIdentifier,
      assert std.isObject(InputReferenceConfig) : 'InputReferenceConfig must be an object',
      InputReferenceConfig: InputReferenceConfig,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::IdNamespaceAssociation',
  },
  withIdNamespaceAssociationIdentifier(IdNamespaceAssociationIdentifier): {
    assert std.isString(IdNamespaceAssociationIdentifier) : 'IdNamespaceAssociationIdentifier must be a string',
    Properties+::: {
      IdNamespaceAssociationIdentifier: IdNamespaceAssociationIdentifier,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withMembershipArn(MembershipArn): {
    assert std.isString(MembershipArn) : 'MembershipArn must be a string',
    Properties+::: {
      MembershipArn: MembershipArn,
    },
  },
  withCollaborationIdentifier(CollaborationIdentifier): {
    assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
    Properties+::: {
      CollaborationIdentifier: CollaborationIdentifier,
    },
  },
  withCollaborationArn(CollaborationArn): {
    assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
    Properties+::: {
      CollaborationArn: CollaborationArn,
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
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withIdMappingConfig(IdMappingConfig): {
    assert std.isObject(IdMappingConfig) : 'IdMappingConfig must be a object',
    Properties+::: {
      IdMappingConfig: IdMappingConfig,
    },
  },
  withInputReferenceProperties(InputReferenceProperties): {
    assert std.isObject(InputReferenceProperties) : 'InputReferenceProperties must be a object',
    Properties+::: {
      InputReferenceProperties: InputReferenceProperties,
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
