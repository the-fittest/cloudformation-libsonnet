{
  new(
    Name,
    Type,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'CodeCommit' && Type != 'Bitbucket' && Type != 'GitHubEnterpriseServer' && Type != 'S3Bucket' then (error "Type should be 'CodeCommit' or 'Bitbucket' or 'GitHubEnterpriseServer' or 'S3Bucket'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeGuruReviewer::RepositoryAssociation',
  },
  setOwner(Owner): {
    Properties+::: {
      Owner:
        if !std.isString(Owner) then (error 'Owner must be a string')
        else if std.isEmpty(Owner) then (error 'Owner must be not empty')
        else if std.length(Owner) < 1 then error ('Owner should have at least 1 characters')
        else if std.length(Owner) > 100 then error ('Owner should have not more than 100 characters')
        else Owner,
    },
  },
  setBucketName(BucketName): {
    Properties+::: {
      BucketName:
        if !std.isString(BucketName) then (error 'BucketName must be a string')
        else if std.isEmpty(BucketName) then (error 'BucketName must be not empty')
        else if std.length(BucketName) < 3 then error ('BucketName should have at least 3 characters')
        else if std.length(BucketName) > 63 then error ('BucketName should have not more than 63 characters')
        else BucketName,
    },
  },
  setConnectionArn(ConnectionArn): {
    Properties+::: {
      ConnectionArn:
        if !std.isString(ConnectionArn) then (error 'ConnectionArn must be a string')
        else if std.isEmpty(ConnectionArn) then (error 'ConnectionArn must be not empty')
        else if std.length(ConnectionArn) > 256 then error ('ConnectionArn should have not more than 256 characters')
        else ConnectionArn,
    },
  },
  setAssociationArn(AssociationArn): {
    Properties+::: {
      AssociationArn:
        if !std.isString(AssociationArn) then (error 'AssociationArn must be a string')
        else if std.isEmpty(AssociationArn) then (error 'AssociationArn must be not empty')
        else if std.length(AssociationArn) > 256 then error ('AssociationArn should have not more than 256 characters')
        else AssociationArn,
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
