Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  get("/delete_director/:path_id", { :controller => "directors", :action => "delete" })
  post("/insert_director", { :controller => "directors", :action => "insert" })
  post("/modify_director/:path_id", { :controller => "directors", :action => "modify" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie", { :controller => "movies", :action => "insert" })
  post("/modify_movie_record/:the_id", { :controller => "movies", :action => "update" })
  get("/delete_movie/:an_id", { :controller => "movies", :action => "destroy" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  get("/delete_actor/:path_id", { :controller => "actors", :action => "delete" })
  post("/insert_actor", { :controller => "actors", :action => "insert" })
  post("/modify_actor/:path_id", { :controller => "actors", :action => "modify" })
end
