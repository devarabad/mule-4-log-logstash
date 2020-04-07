%dw 2.0
output application/json
---
{
  environment: "${env}",
  service: app.name,
  correlationId: correlationId,
  errorId: error.description,
  errorType: error.errorType,
  attributes: attributes,
  payload: payload
}