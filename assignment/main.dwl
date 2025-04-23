%dw 2.0
output application/json
/*  "EMPLOYE_EXPORT_UCN": [
    {
      "EMP_ID": 64,
      "EMP_SIREN": "83956750",
      "EMP_DATE_EXPORT": "2023-03-31T08:20:02.000Z"
    },
    {
      "EMP_ID": 64,
      "EMP_SIREN": "83956750",
      "EMP_DATE_EXPORT": "2023-04-30T13:28:02.000Z"
    },
    {
      "EMP_ID": 84,
      "EMP_SIREN": "35255221",
      "EMP_DATE_EXPORT": "2023-04-19T07:24:00.000Z"
    }
  ]
}
*/
---
{
    "EMPLOYE_EXPORT_UCN": (payload.EMPLOYE_EXPORT_UCN map (item) -> {
        "EMP_ID": item.EMP_ID,
        "EMP_SIREN": item.EMP_SIREN,
        "EMP_DATE_EXPORT": item.EMP_DATE_EXPORT 
    }) 
distinctBy (value) -> value.EMP_ID
        
    
}