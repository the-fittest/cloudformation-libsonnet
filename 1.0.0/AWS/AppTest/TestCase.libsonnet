{
  new(
    Name,
    Steps,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Steps:
        if !std.isArray(Steps) then (error 'Steps must be an array')
        else if std.length(Steps) < 1 then error ('Steps cannot have less than 1 items')
        else if std.length(Steps) > 20 then error ('Steps cannot have more than 20 items')
        else Steps,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppTest::TestCase',
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setLastUpdateTime(LastUpdateTime): {
    Properties+::: {
      LastUpdateTime:
        if !std.isString(LastUpdateTime) then (error 'LastUpdateTime must be a string')
        else if std.isEmpty(LastUpdateTime) then (error 'LastUpdateTime must be not empty')
        else LastUpdateTime,
    },
  },
  setLatestVersion(LatestVersion): {
    Properties+::: {
      LatestVersion:
        if !std.isObject(LatestVersion) then (error 'LatestVersion must be an object')
        else if !std.objectHas(LatestVersion, 'Status') then (error ' have attribute Status')
        else if !std.objectHas(LatestVersion, 'Version') then (error ' have attribute Version')
        else LatestVersion,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'Active' && Status != 'Deleting' then (error "Status should be 'Active' or 'Deleting'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setTestCaseArn(TestCaseArn): {
    Properties+::: {
      TestCaseArn:
        if !std.isString(TestCaseArn) then (error 'TestCaseArn must be a string')
        else if std.isEmpty(TestCaseArn) then (error 'TestCaseArn must be not empty')
        else TestCaseArn,
    },
  },
  setTestCaseId(TestCaseId): {
    Properties+::: {
      TestCaseId:
        if !std.isString(TestCaseId) then (error 'TestCaseId must be a string')
        else if std.isEmpty(TestCaseId) then (error 'TestCaseId must be not empty')
        else TestCaseId,
    },
  },
  setTestCaseVersion(TestCaseVersion): {
    Properties+::: {
      TestCaseVersion:
        if !std.isNumber(TestCaseVersion) then (error 'TestCaseVersion must be an number')
        else TestCaseVersion,
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
