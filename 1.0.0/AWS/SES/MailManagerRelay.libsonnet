{
  new(
    Authentication,
    ServerName,
    ServerPort,
  ): {
    local base = self,
    Properties: {
      Authentication: Authentication,
      ServerName:
        if !std.isString(ServerName) then (error 'ServerName must be a string')
        else if std.isEmpty(ServerName) then (error 'ServerName must be not empty')
        else if std.length(ServerName) < 1 then error ('ServerName should have at least 1 characters')
        else if std.length(ServerName) > 100 then error ('ServerName should have not more than 100 characters')
        else ServerName,
      ServerPort:
        if !std.isNumber(ServerPort) then (error 'ServerPort must be an number')
        else if ServerPort < 1 then error ('ServerPort should be at least 1')
        else if ServerPort > 65535 then error ('ServerPort should be not more than 65535')
        else ServerPort,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerRelay',
  },
  setRelayArn(RelayArn): {
    Properties+::: {
      RelayArn:
        if !std.isString(RelayArn) then (error 'RelayArn must be a string')
        else if std.isEmpty(RelayArn) then (error 'RelayArn must be not empty')
        else RelayArn,
    },
  },
  setRelayId(RelayId): {
    Properties+::: {
      RelayId:
        if !std.isString(RelayId) then (error 'RelayId must be a string')
        else if std.isEmpty(RelayId) then (error 'RelayId must be not empty')
        else if std.length(RelayId) < 1 then error ('RelayId should have at least 1 characters')
        else if std.length(RelayId) > 100 then error ('RelayId should have not more than 100 characters')
        else RelayId,
    },
  },
  setRelayName(RelayName): {
    Properties+::: {
      RelayName:
        if !std.isString(RelayName) then (error 'RelayName must be a string')
        else if std.isEmpty(RelayName) then (error 'RelayName must be not empty')
        else if std.length(RelayName) < 1 then error ('RelayName should have at least 1 characters')
        else if std.length(RelayName) > 100 then error ('RelayName should have not more than 100 characters')
        else RelayName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
