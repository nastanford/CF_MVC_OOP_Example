component {
  this.name = "testApp";
  this.applicationTimeout = createTimeSpan( 30, 0, 0, 0 ); //30 days
  this.clientManagement = false;
  this.sessionManagement = true;
  this.sessionStorage = true;
  this.sessionTimeout = createTimeSpan( 0, 0, 60, 0 ); // 1 hour 
  this.mappings["/TestBox"] = expandPath("/test/testbox/");
  this.mappings["/Models"] = expandPath("/test/models/");

  this.datasource = "testDB";

  function onApplicationStart(){}
  function onApplicationEnd( struct applicationScope ) {}

  function onSessionStart() {}
  function onSessionEnd( struct sessionScope, struct applicationScope ) {}

  function onRequestStart( ) {
    request.app_name = "Test App";
  }
  function onRequest( string targetPage ) {
    include arguments.targetPage;
  }
  function onRequestEnd() {}

  function onError( any Exception, string EventName ) {}

}
