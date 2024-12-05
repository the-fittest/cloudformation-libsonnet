{
    fn+:: {
        base64(valueToEncode):: {
          "Fn::Base64" : valueToEncode
         },
        cidr(ipBlock, count, cidrBits):: {
          "Fn::Cidr" : [ipBlock, count, cidrBits]
         },
        findInMap(mapName,topLevelKey,secondLevelKey):: {
          "Fn::FindInMap" : [ mapName, topLevelKey, secondLevelKey]
         },
        getAtt(logicalNameOfResource,attributeName):: {
          "Fn::GetAtt" : [ logicalNameOfResource, attributeName ]
         },
        getAZs(region):: {
          "Fn::GetAZs" : region
         },
        importValue(sharedValueToImport):: {
          "Fn::ImportValue" : sharedValueToImport
         },
        join(delimiter,listOfValues=[]):: {
          "Fn::Join" : [ delimiter, listOfValues ]
         },
        select(index, listOfObjects=[]):: {
          "Fn::Select" : [ index, listOfObjects ]
         },
        split(delimiter, source):: {
          "Fn::Split" : [ delimiter, source ]
         },
        sub(source, mapOfSubs={}):: {
          "Fn::Sub" : [ source, mapOfSubs ]
         },
        transform(name, parameters={}):: {
          "Fn::Transform": {"Name": name, "Parameters":parameters,},
         },
        and(conditions=[]):: {
          "Fn::And": conditions
        },
        equals(conditions=[]):: {
          "Fn::Equals": conditions
        },
        "if"(condition,valueIfTrue,valueIfFalse):: {
          "Fn::If": [condition,valueIfTrue,valueIfFalse]
        },
        not(condition):: {
          "Fn::Not": [condition]
        },
        or(conditions=[d.arg(name='conditions', type=d.T.array)]):: {
          "Fn::Or": conditions
        },
    },
    ref(logicalName):: { "Ref": logicalName },
    condition(conditionName):: { "Condition": conditionName },
    tag(key, value):: {"Key": key, "Value": value},
}
