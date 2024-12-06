{
  new(
    AcceptTermsAndConditions,
  ): {
    local base = self,
    Properties: {
      AcceptTermsAndConditions:
        if !std.isBoolean(AcceptTermsAndConditions) then (error 'AcceptTermsAndConditions must be a boolean') else AcceptTermsAndConditions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::Publisher',
  },
  setPublisherId(PublisherId): {
    Properties+::: {
      PublisherId:
        if !std.isString(PublisherId) then (error 'PublisherId must be a string')
        else if std.isEmpty(PublisherId) then (error 'PublisherId must be not empty')
        else if std.length(PublisherId) < 1 then error ('PublisherId should have at least 1 characters')
        else if std.length(PublisherId) > 40 then error ('PublisherId should have not more than 40 characters')
        else PublisherId,
    },
  },
  setConnectionArn(ConnectionArn): {
    Properties+::: {
      ConnectionArn:
        if !std.isString(ConnectionArn) then (error 'ConnectionArn must be a string')
        else if std.isEmpty(ConnectionArn) then (error 'ConnectionArn must be not empty')
        else ConnectionArn,
    },
  },
  setPublisherStatus(PublisherStatus): {
    Properties+::: {
      PublisherStatus:
        if !std.isString(PublisherStatus) then (error 'PublisherStatus must be a string')
        else if std.isEmpty(PublisherStatus) then (error 'PublisherStatus must be not empty')
        else if PublisherStatus != 'VERIFIED' && PublisherStatus != 'UNVERIFIED' then (error "PublisherStatus should be 'VERIFIED' or 'UNVERIFIED'")
        else PublisherStatus,
    },
  },
  setPublisherProfile(PublisherProfile): {
    Properties+::: {
      PublisherProfile:
        if !std.isString(PublisherProfile) then (error 'PublisherProfile must be a string')
        else if std.isEmpty(PublisherProfile) then (error 'PublisherProfile must be not empty')
        else if std.length(PublisherProfile) > 1024 then error ('PublisherProfile should have not more than 1024 characters')
        else PublisherProfile,
    },
  },
  setIdentityProvider(IdentityProvider): {
    Properties+::: {
      IdentityProvider:
        if !std.isString(IdentityProvider) then (error 'IdentityProvider must be a string')
        else if std.isEmpty(IdentityProvider) then (error 'IdentityProvider must be not empty')
        else if IdentityProvider != 'AWS_Marketplace' && IdentityProvider != 'GitHub' && IdentityProvider != 'Bitbucket' then (error "IdentityProvider should be 'AWS_Marketplace' or 'GitHub' or 'Bitbucket'")
        else IdentityProvider,
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
