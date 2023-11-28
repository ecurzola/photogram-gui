Rails.application.routes.draw do

  get("/", { :controller => "misc", :action => "homepage" })
  get("/users", { :controller => "", :action => "" })
  get("/photos", { :controller => "", :action => "" })

end
