class PhotosController < ApplicationController

  def index
  
    matching_photo = Photo.all

    @list_of_photos = matching_photo.order({:created_at => :desc})

     render({ :template => "photo_templates/index"})
  
    end

  def show
    
    url_id = params.fetch("path_id")
    matching_photo = Photo.where({:id => url_id})
    
    @the_photo = matching_photo.at(0)
      
    render({ :template => "photo_templates/show" })

  end

end
