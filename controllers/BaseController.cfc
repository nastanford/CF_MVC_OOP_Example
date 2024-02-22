// This is the Base Controller that all other controllers extend.
component {
  private string function renderView(required string view, struct data, string layout="main") {
    // This must be before calling any layouts.
    var pageTitle = data.title;
    // var data = data;
    layout = "../views/layouts/" & arguments.layout & ".cfm";
    savecontent variable = "Content" {
      include "../views/#view#.cfm";
    } 
    
    include "#layout#";
    return "";
  }

}