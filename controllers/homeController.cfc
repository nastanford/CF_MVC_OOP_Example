// HomeController.cfc 
component extends="BaseController" displayname="homeController" hint="Home Controller" {

  function index() {
    // writeDump(request);
    return renderView("home/index", {title="Home"}, "main");
  
  }
  function url() {
    // writeDump(request.urldata);
    return renderView("home/url", {title="Home"}, "main");
  
  }

  function about() {
    return renderView("home/about", {title="About"}, "main");
  
  }

}
