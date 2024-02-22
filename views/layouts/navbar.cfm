

<cfif thisTag.executionMode eq "start">

      <div id="top-nav" class="bg-secondary">
        <nav class="navbar navbar-expand-lg">
          <a class="navbar-brand text-white ps-4" href="index.cfm">Second Navbar</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link btn btn-sm btn-primary text-white" href="index.cfm">Home</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link btn btn-sm btn-primary text-white" href="index.cfm?home.url&id=7&dept_id=26&class=242&firstname=john&lastname=smith">url Variables</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link btn btn-sm btn-primary text-white" href="index.cfm?home.about">About</a>
              </li>
            </ul>
          </div>
          <!--- Display User name if logged in. --->
          <div class="text-white text-right pe-4">  
            <i class="fa-duotone fa-circle-user"></i>    
            Nathan Stanford Sr
          </div>
        </nav>
      </div>
</cfif>