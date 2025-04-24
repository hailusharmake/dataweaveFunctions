%dw 2.0
output application/json
/*[
  {
    "oderId": "9987456",
    "componentId": "44567889",
    "operation": "add"
  }
]*/
/*[
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  }
]*/
/*[
  {
    "id": "594585.1, 533943.1, 594602.1, 765114.1",
    "message": "Error converting data type nvarchar to int.",
    "table": "Data"
  },
  {
    "id": "594586.1, 533944.1, 594603.1, 765115.1",
    "message": "type nvarchar to int1.",
    "table": "Data"
  }
]*/
---
//payload distinctBy ((item, index) -> item.oderId) filter ((item, index) -> item.operation == "add"
//load flatMap ((item) -> item.HeaderContNum map (item) -> "headernum":item)
strict groupBy (item) -> item.message mapObject ((value, key, index) -> )