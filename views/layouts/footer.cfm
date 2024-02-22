<cfoutput>
  <div id="top-nav" class="bg-secondary px-4">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top bg-secondary text-white">
      <p class="col-md-4 mb-0">&copy; #year(now())# #request.app_name#</p>
      <ul class="nav col-md-4 justify-content-end">
        <li class="nav-item"><a href="index.cfm" class="nav-link text-white px-2">Home</a></li>
        <li class="nav-item"><a href="index.cfm?home.about" class="nav-link text-white px-2">About</a></li>
      </ul>
    </footer>
  </div>
</cfoutput>