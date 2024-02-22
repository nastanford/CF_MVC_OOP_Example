<cfif thisTag.executionMode eq "start">
  <cfset pageTitle = attributes.pageTitle>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/default.css">
    <link rel="stylesheet" href="./assets/css/bootstrap.css">
    <cfoutput>
      <title>#pageTitle# | #request.app_name#</title>
    </cfoutput>
  </head>
  <body class="bg-light">
    <cfinclude template = "./header.cfm">
    
    <cf_navbar>
<cfelse>
  <cfinclude template = "./footer.cfm">
  </body>
  </html>
  <cfsetting showDebugOutput = "no" >
</cfif>
