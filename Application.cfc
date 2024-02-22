component {
  // Set up the application name and session management
  this.name = "testApp";
  this.applicationTimeout = createTimeSpan( 30, 0, 0, 0 ); //30 days
  this.clientManagement = false;
  this.sessionManagement = true;
  this.sessionStorage = true;
  this.sessionTimeout = createTimeSpan( 0, 0, 60, 0 ); // 1 hour 

  // Determine the base path of the application
  applicationBasePath = getDirectoryFromPath(getBaseTemplatePath());

  // Define the relative paths for models and TestBox
  relativeModelsPath = "models/";
  relativeTestBoxPath = "testbox/";

  // Define the absolute paths by combining the base path with relative paths
  absoluteModelsPath = applicationBasePath & relativeModelsPath;
  absoluteTestBoxPath = applicationBasePath & relativeTestBoxPath;

  // Assign the mappings
  this.mappings["/TestBox"] = expandPath(absoluteTestBoxPath);
  this.mappings["/Models"] = expandPath(absoluteModelsPath);

  // Change this to the name of the database you want to use
  this.datasource = "testDB";

  function onApplicationStart(){}
  function onApplicationEnd( struct applicationScope ) {}

  function onSessionStart() {}
  function onSessionEnd( struct sessionScope, struct applicationScope ) {}

  function onRequestStart( ) {
    // This is the name of the application that will be displayed in the browser
    request.app_name = "CF MVC OOP";
  }
  function onRequest( string targetPage ) {
    include arguments.targetPage;
  }
  function onRequestEnd() {}

  function onError( any Exception, string EventName ) {}

}
