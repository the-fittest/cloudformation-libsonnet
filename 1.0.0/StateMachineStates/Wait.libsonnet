{
  new(): {
    Type: 'Wait',
    QueryLanguage:: 'JSONPath',
    Seconds:: 0,
    End: true,
    Comment:: '',
  },
  setComment(Comment): {
    Comment:::
      if !std.isString(Comment) then error ('Comment must be a string')
      else if std.isEmpty(Comment) then error ('Comment must not be empty')
      else Comment,
  },
  setSeconds(Seconds): {
    Seconds::: Seconds,
  },
  setTimestamp(Timestamp): {
    Timestamp::: Timestamp,
  },
  setNext(Next): {
    End:: false,
    Next:::
      if !std.isString(Next) then error ('Next must be a string')
      else if std.isEmpty(Next) then error ('Next must not be empty')
      else Next,
  },
  setQueryLanguage(QueryLanguage): {
    QueryLanguage:::
      if QueryLanguage != 'JSONPath' && QueryLanguage != 'JSONata' then error ('QueryLanguage must be either "JSONPath" or "JSONata"')
      else QueryLanguage,
  },
  setOutputPath(OutputPath): {
    OutputPath:::
      if self.QueryLanguage == 'JSONata' then error ('OutputPath cannot be used with QueryLanguage JSONata')
      else OutputPath,
  },
  setInputPath(InputPath): {
    InputPath:::
      if self.QueryLanguage == 'JSONata' then error ('InputPath cannot be used with QueryLanguage JSONata')
      else InputPath,
  },
  setSecondsPath(SecondsPath): {
    SecondsPath:::
      if self.QueryLanguage == 'JSONata' then error ('SecondsPath cannot be used with QueryLanguage JSONata')
      else SecondsPath,
  },
  setTimestampPath(TimestampPath): {
    TimestampPath:::
      if self.QueryLanguage == 'JSONata' then error ('TimestampPath cannot be used with QueryLanguage JSONata')
      else TimestampPath,
  },
  setOutput(Output): {
    Output:::
      if self.QueryLanguage == 'JSONPath' then error ('Output cannot be used with JSONPath')
      else Output,
  },
  setAssign(Assign): {
    Assign:::
      if self.QueryLanguage == 'JSONPath' then error ('Assign cannot be used with JSONPath')
      else Assign,
  },
}
