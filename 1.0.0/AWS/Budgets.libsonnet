local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Budget: {
    '#': d.pkg(
      name='Budget',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Budgets.libsonnet',
      help='Resource Type definition for AWS::Budgets::Budget',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Budgets::Budget Resource
        * Budget 
      |||,
      args=[
        d.arg('Budget', 'd.T.object'),
      ]
    ),
    new(
      Budget,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Budget) : 'Budget must be a object',
        Budget: Budget,
      },
      DependsOn:: [],
      Type: 'AWS::Budgets::Budget',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNotificationsWithSubscribers': d.fn('`withNotificationsWithSubscribers` NotificationsWithSubscribers ', [d.arg('NotificationsWithSubscribers', d.T.array)]),
    withNotificationsWithSubscribers(NotificationsWithSubscribers): {
      assert std.isArray(NotificationsWithSubscribers) : 'NotificationsWithSubscribers must be a array',
      Properties+::: { NotificationsWithSubscribers: NotificationsWithSubscribers },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
  },
  BudgetsAction: {
    '#': d.pkg(
      name='BudgetsAction',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Budgets.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Budgets::BudgetsAction Resource
        * BudgetName 
        * NotificationType 
        * ActionType 
        * ActionThreshold 
        * ExecutionRoleArn 
        * Definition 
        * Subscribers 
      |||,
      args=[
        d.arg('BudgetName', 'd.T.string'),
        d.arg('NotificationType', 'd.T.string'),
        d.arg('ActionType', 'd.T.string'),
        d.arg('ActionThreshold', 'd.T.object'),
        d.arg('ExecutionRoleArn', 'd.T.string'),
        d.arg('Definition', 'd.T.object'),
        d.arg('Subscribers', 'd.T.array'),
      ]
    ),
    new(
      BudgetName,
      NotificationType,
      ActionType,
      ActionThreshold,
      ExecutionRoleArn,
      Definition,
      Subscribers,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BudgetName) : 'BudgetName must be a string',
        BudgetName: BudgetName,
        assert std.isString(NotificationType) : 'NotificationType must be a string',
        assert NotificationType == 'ACTUAL' || NotificationType == 'FORECASTED' : "NotificationType must be either 'ACTUAL' or 'FORECASTED'",
        NotificationType: NotificationType,
        assert std.isString(ActionType) : 'ActionType must be a string',
        assert ActionType == 'APPLY_IAM_POLICY' || ActionType == 'APPLY_SCP_POLICY' || ActionType == 'RUN_SSM_DOCUMENTS' : "ActionType must be either 'APPLY_IAM_POLICY' or 'APPLY_SCP_POLICY' or 'RUN_SSM_DOCUMENTS'",
        ActionType: ActionType,
        assert std.isObject(ActionThreshold) : 'ActionThreshold must be a object',
        ActionThreshold: ActionThreshold,
        assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
        ExecutionRoleArn: ExecutionRoleArn,
        assert std.isObject(Definition) : 'Definition must be a object',
        Definition: Definition,
        assert std.isArray(Subscribers) : 'Subscribers must be a array',
        Subscribers: Subscribers,
      },
      DependsOn:: [],
      Type: 'AWS::Budgets::BudgetsAction',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withActionId': d.fn('`withActionId` ActionId ', [d.arg('ActionId', d.T.string)]),
    withActionId(ActionId): {
      assert std.isString(ActionId) : 'ActionId must be a string',
      Properties+::: { ActionId: ActionId },
    },
    '#withApprovalModel': d.fn('`withApprovalModel` ApprovalModel ', [d.arg('ApprovalModel', d.T.string)]),
    withApprovalModel(ApprovalModel): {
      assert std.isString(ApprovalModel) : 'ApprovalModel must be a string',
      assert ApprovalModel == 'AUTOMATIC' || ApprovalModel == 'MANUAL' : "ApprovalModel must be either 'AUTOMATIC' or 'MANUAL'",
      Properties+::: { ApprovalModel: ApprovalModel },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
  },
}
