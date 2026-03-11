Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })

  get("/signup", { :controller => "users", :action => "new" })
  post("/users", { :controller => "users", :action => "create" })

  get("/login", { :controller => "sessions", :action => "new" })
  post("/sessions", { :controller => "sessions", :action => "create" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  resources "entries"
  resources "places"
end
