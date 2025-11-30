Target:
- Source TU: {{tu_path}}
- Entry function (kept real): {{entry.name}}  {{entry.signature}}
- In-path functions (kept real): {{in_path|join(", ")}}
- Helper functions to stub: {{helpers|join(", ")}}

Known types (from facts): 
{{typedefs_block}}

Struct fields (from facts):
{{structs_block}}

Driver parameters for grooming:
{{driver_params_block}}

Vulnerability context (optional):
- File: {{finding.file}}
- Line: {{finding.line}}
- Rule: {{finding.ruleId}}
- Message: {{finding.message}}

Please produce stubs/groomers JSON per the required format. Avoid project specifics.
