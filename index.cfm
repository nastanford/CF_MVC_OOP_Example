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
        request.action = ListGetAt(ListGetAt(controller_action,2,'.'),1,'&');
        Request.urlData=getQueryStringVariables(controller_action);
      }
  }
  
    //  Create the controller object dynamically based on the URL parameters 
    controllerName = "controllers." & request.controller & "Controller";
    controller = createObject("component", controllerName);
    //  Call the specified action/function on the controller 
    actionName = request.action;
    result = controller[actionName]();


public struct function getQueryStringVariables(controller_action) {
  var variables = {};
  var pairs = ListToArray(controller_action, "&");
  arrayDeleteAt(pairs, 1);
  for (var i = 1; i <= ArrayLen(pairs); i++) {
    var pair = pairs[i];
    var key = ListFirst(pair, "=");
    var value = ListLast(pair, "=");
    variables[key] = value;
    // Set variables into the request scope
    request[key] = value;
  }
  return variables;
}

</cfscript>
