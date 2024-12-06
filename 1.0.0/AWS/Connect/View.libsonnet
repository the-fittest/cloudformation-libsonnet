{
  new(
    InstanceArn,
    Template,
    Actions,
    Name,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else if std.length(InstanceArn) < 1 then error ('InstanceArn should have at least 1 characters')
        else if std.length(InstanceArn) > 100 then error ('InstanceArn should have not more than 100 characters')
        else InstanceArn,
      Template:
        if !std.isObject(Template) then (error 'Template must be an object')
        else Template,
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else if std.length(Actions) > 1000 then error ('Actions cannot have more than 1000 items')
        else Actions,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 512 then error ('Name should have not more than 512 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::View',
  },
  setViewArn(ViewArn): {
    Properties+::: {
      ViewArn:
        if !std.isString(ViewArn) then (error 'ViewArn must be a string')
        else if std.isEmpty(ViewArn) then (error 'ViewArn must be not empty')
        else if std.length(ViewArn) < 1 then error ('ViewArn should have at least 1 characters')
        else if std.length(ViewArn) > 255 then error ('ViewArn should have not more than 255 characters')
        else ViewArn,
    },
  },
  setViewId(ViewId): {
    Properties+::: {
      ViewId:
        if !std.isString(ViewId) then (error 'ViewId must be a string')
        else if std.isEmpty(ViewId) then (error 'ViewId must be not empty')
        else if std.length(ViewId) < 1 then error ('ViewId should have at least 1 characters')
        else if std.length(ViewId) > 500 then error ('ViewId should have not more than 500 characters')
        else ViewId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 4096 then error ('Description should have not more than 4096 characters')
        else Description,
    },
  },
  setViewContentSha256(ViewContentSha256): {
    Properties+::: {
      ViewContentSha256:
        if !std.isString(ViewContentSha256) then (error 'ViewContentSha256 must be a string')
        else if std.isEmpty(ViewContentSha256) then (error 'ViewContentSha256 must be not empty')
        else ViewContentSha256,
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
