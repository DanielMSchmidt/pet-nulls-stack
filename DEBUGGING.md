# Debugging Stacks

- Terraform Panics: These should be exposed via diagnostics, they are also sent into Sentry with the stack trace and additional log data. 
    - These events also have the stack_id and the stack_plan_id attached to them as tags.
- Plan Description: /api/v2/stack-plans/<stack_plan_id>/plan-description
    - Complete plan over all components
- Apply Description: /api/v2/stack-plans/<stack_plan_id>/apply-description
    - Complete overview of apply over all components
- Stack Events: /api/v2/stack-plans/<stack_plan_id>/stack-events
    - High-level events that trigger new plan / apply runs
- Stack Plan:  /api/v2/stack-plans/<stack_plan_id>?include=stack-plan-operations%2Cstack-diagnostics
    - stack-plan-operation type: included[type=stack-plan-operation].attributes.operation-type => "apply" || "plan"
    - plan / apply event stream: included[type=stack-plan-operation].attributes.event-stream-url
        - Detailed event stream of the plan / apply run with provider logs 
    