{
  new(
    MembershipIdentifier,
    Name,
    InputReferenceConfig,
  ): {
    local base = self,
    Properties: {
      MembershipIdentifier:
        if !std.isString(MembershipIdentifier) then (error 'MembershipIdentifier must be a string')
        else if std.isEmpty(MembershipIdentifier) then (error 'MembershipIdentifier must be not empty')
        else if std.length(MembershipIdentifier) < 36 then error ('MembershipIdentifier should have at least 36 characters')
        else if std.length(MembershipIdentifier) > 36 then error ('MembershipIdentifier should have not more than 36 characters')
        else MembershipIdentifier,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      InputReferenceConfig:
        if !std.isObject(InputReferenceConfig) then (error 'InputReferenceConfig must be an object')
        else if !std.objectHas(InputReferenceConfig, 'InputReferenceArn') then (error ' have attribute InputReferenceArn')
        else if !std.objectHas(InputReferenceConfig, 'ManageResourcePolicies') then (error ' have attribute ManageResourcePolicies')
        else InputReferenceConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::IdMappingTable',
  },
  setIdMappingTableIdentifier(IdMappingTableIdentifier): {
    Properties+::: {
      IdMappingTableIdentifier:
        if !std.isString(IdMappingTableIdentifier) then (error 'IdMappingTableIdentifier must be a string')
        else if std.isEmpty(IdMappingTableIdentifier) then (error 'IdMappingTableIdentifier must be not empty')
        else if std.length(IdMappingTableIdentifier) < 36 then error ('IdMappingTableIdentifier should have at least 36 characters')
        else if std.length(IdMappingTableIdentifier) > 36 then error ('IdMappingTableIdentifier should have not more than 36 characters')
        else IdMappingTableIdentifier,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 200 then error ('Arn should have not more than 200 characters')
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setInputReferenceProperties(InputReferenceProperties): {
    Properties+::: {
      InputReferenceProperties:
        if !std.isObject(InputReferenceProperties) then (error 'InputReferenceProperties must be an object')
        else if !std.objectHas(InputReferenceProperties, 'IdMappingTableInputSource') then (error ' have attribute IdMappingTableInputSource')
        else InputReferenceProperties,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 4 then error ('KmsKeyArn should have at least 4 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
