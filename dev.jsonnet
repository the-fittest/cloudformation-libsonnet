local util = (import '1.0.0/main.libsonnet');

{
  foo: util.ref('as'),
  bar: util.fn.base64('as'),
  baz:
    util.Logs.LogGroup.new()
    + util.Logs.LogGroup.setLogGroupName('Test'),
  'Wait for process':
    util.Wait.new()
    + util.Wait.setSeconds(20)
    + util.Wait.setInputPath('$.slayer')
    + util.Wait.setOutputPath(null)
    + util.Wait.setAssign('asd')
}
