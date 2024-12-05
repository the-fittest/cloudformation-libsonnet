{
  new(
    MembershipIdentifier,
    InputReferenceConfig,
    Name,
  ): {
    local base = self,
    Properties: {
      MembershipIdentifier:
        if !std.isString(MembershipIdentifier) then (error 'MembershipIdentifier must be a string')
        else if std.isEmpty(MembershipIdentifier) then (error 'MembershipIdentifier must be not empty')
        else if std.length(MembershipIdentifier) < 36 then error ('MembershipIdentifier should have at least 36 characters')
        else if std.length(MembershipIdentifier) > 36 then error ('MembershipIdentifier should have not more than 36 characters')
        else MembershipIdentifier,
      InputReferenceConfig:
        if !std.isObject(InputReferenceConfig) then (error 'InputReferenceConfig must be an object')
        else if !std.objectHas(InputReferenceConfig, 'InputReferenceArn') then (error ' have attribute InputReferenceArn')
        else if !std.objectHas(InputReferenceConfig, 'ManageResourcePolicies') then (error ' have attribute ManageResourcePolicies')
        else InputReferenceConfig,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::IdNamespaceAssociation',
  },
  setIdNamespaceAssociationIdentifier(IdNamespaceAssociationIdentifier): {
    Properties+::: {
      IdNamespaceAssociationIdentifier:
        if !std.isString(IdNamespaceAssociationIdentifier) then (error 'IdNamespaceAssociationIdentifier must be a string')
        else if std.isEmpty(IdNamespaceAssociationIdentifier) then (error 'IdNamespaceAssociationIdentifier must be not empty')
        else if std.length(IdNamespaceAssociationIdentifier) < 36 then error ('IdNamespaceAssociationIdentifier should have at least 36 characters')
        else if std.length(IdNamespaceAssociationIdentifier) > 36 then error ('IdNamespaceAssociationIdentifier should have not more than 36 characters')
        else IdNamespaceAssociationIdentifier,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
    },
  },
  setMembershipArn(MembershipArn): {
    Properties+::: {
      MembershipArn:
        if !std.isString(MembershipArn) then (error 'MembershipArn must be a string')
        else if std.isEmpty(MembershipArn) then (error 'MembershipArn must be not empty')
        else if std.length(MembershipArn) > 100 then error ('MembershipArn should have not more than 100 characters')
        else MembershipArn,
    },
  },
  setCollaborationIdentifier(CollaborationIdentifier): {
    Properties+::: {
      CollaborationIdentifier:
        if !std.isString(CollaborationIdentifier) then (error 'CollaborationIdentifier must be a string')
        else if std.isEmpty(CollaborationIdentifier) then (error 'CollaborationIdentifier must be not empty')
        else if std.length(CollaborationIdentifier) < 36 then error ('CollaborationIdentifier should have at least 36 characters')
        else if std.length(CollaborationIdentifier) > 36 then error ('CollaborationIdentifier should have not more than 36 characters')
        else CollaborationIdentifier,
    },
  },
  setCollaborationArn(CollaborationArn): {
    Properties+::: {
      CollaborationArn:
        if !std.isString(CollaborationArn) then (error 'CollaborationArn must be a string')
        else if std.isEmpty(CollaborationArn) then (error 'CollaborationArn must be not empty')
        else if std.length(CollaborationArn) > 100 then error ('CollaborationArn should have not more than 100 characters')
        else CollaborationArn,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setIdMappingConfig(IdMappingConfig): {
    Properties+::: {
      IdMappingConfig:
        if !std.isObject(IdMappingConfig) then (error 'IdMappingConfig must be an object')
        else if !std.objectHas(IdMappingConfig, 'AllowUseAsDimensionColumn') then (error ' have attribute AllowUseAsDimensionColumn')
        else IdMappingConfig,
    },
  },
  setInputReferenceProperties(InputReferenceProperties): {
    Properties+::: {
      InputReferenceProperties:
        if !std.isObject(InputReferenceProperties) then (error 'InputReferenceProperties must be an object')
        else InputReferenceProperties,
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
