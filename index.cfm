<cfscript>
  //  Set the Default Controller and Action
  cfparam( default="home", name="request.controller" );
  cfparam( default="index", name="request.action" );

  // Get the count of the query_string that has a period.
  queryStringLength=len(cgi.query_string);
  if ( queryStringLength eq 0 ) 
  {
    request.controller = 'home';
    request.action = 'index';
  } 
  else 
  {
    if ( find('.', cgi.query_string) eq 0 ) 
      {
        request.controller = cgi.query_string;
        request.action = 'index';

      } else {
        controller_action = ListGetAt(cgi.query_string,1,'/');
        request.controller = ListGetAt(controller_action,1,'.');
        request.action = ListGetAt(controller_action,2,'.');
      }
  }
  
    //  Create the controller object dynamically based on the URL parameters 
    controllerName = "controllers." & request.controller & "Controller";
    controller = createObject("component", controllerName);
    //  Call the specified action/function on the controller 
    actionName = request.action;
    result = controller[actionName]();
    //  Output the result (if any) 
    cfoutput(  ) {
      writeOutput("#result#");
  }
</cfscript>
