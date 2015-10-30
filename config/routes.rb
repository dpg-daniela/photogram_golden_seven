Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/create_photo", { :controller => "photos", :action => "create_row" })
  get("/delete_photo/:id", { :controller => "photos", :action => "delete_row" })
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/photos/:id/edit_row", { :controller => "photos", :action => "edit_row" })


  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  

end
